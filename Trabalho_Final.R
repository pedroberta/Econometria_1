# 1. importação dos dados e criação de nossa Base Final
library(data.table)
library(AER)
library(stargazer)
library(sandwich)

arquivo_base <- function(nome) {
  if (file.exists(nome)) {
    return(nome)
  }
  em_dados <- file.path("Dados", nome)
  if (file.exists(em_dados)) {
    return(em_dados)
  }
  stop(
    "Nao achei ", nome,
    ". Coloque o arquivo na pasta do projeto ou em Dados/, ou rode baixar_bases.R."
  )
}

Base_Candidatos <- fread(input = arquivo_base("consulta_cand_2022_BRASIL.csv"), sep = ";" , encoding = "Latin-1")

Base_Recortada_DF_APTO <- subset(Base_Candidatos, CD_CARGO == "6" & CD_SITUACAO_CANDIDATURA == 12)
table(Base_Recortada_DF_APTO$DS_SIT_TOT_TURNO)

Despesas_Contratadas <- fread(input = arquivo_base("despesas_contratadas_candidatos_2022_BRASIL.csv"), sep = ";", encoding = "Latin-1")
Votos_Munzona <- fread(input = arquivo_base("votacao_candidato_munzona_2022_BRASIL.csv"), sep = ";", encoding = "Latin-1")

class(Votos_Munzona$QT_VOTOS_NOMINAIS)

class(Despesas_Contratadas$VR_DESPESA_CONTRATADA)

Base_Recortada_DF_APTO$SQ_CANDIDATO <- as.character(Base_Recortada_DF_APTO$SQ_CANDIDATO)
Votos_Munzona$SQ_CANDIDATO <- as.character(Votos_Munzona$SQ_CANDIDATO)
Despesas_Contratadas$SQ_CANDIDATO <- as.character(Despesas_Contratadas$SQ_CANDIDATO)

Votos_DF <- Votos_Munzona[Votos_Munzona$SQ_CANDIDATO %in% Base_Recortada_DF_APTO$SQ_CANDIDATO, ]
Votos_Totais <- aggregate(QT_VOTOS_NOMINAIS ~ SQ_CANDIDATO, data = Votos_DF, FUN = sum)
Base_Final <- merge(Base_Recortada_DF_APTO, Votos_Totais, by = "SQ_CANDIDATO", all.x = TRUE)
Base_Final$QT_VOTOS_NOMINAIS[is.na(Base_Final$QT_VOTOS_NOMINAIS)] <- 0

Despesas_DF <- Despesas_Contratadas[Despesas_Contratadas$SQ_CANDIDATO %in% Base_Recortada_DF_APTO$SQ_CANDIDATO, ]
Despesas_Totais <- aggregate(VR_DESPESA_CONTRATADA ~ SQ_CANDIDATO, data = Despesas_DF, FUN = sum)
Base_Final <- merge(Base_Final, Despesas_Totais, by = "SQ_CANDIDATO", all.x = TRUE)
Base_Final$VR_DESPESA_CONTRATADA[is.na(Base_Final$VR_DESPESA_CONTRATADA)] <- 0

nrow(Base_Final)

# 2. Criação das Variáveis
length(unique(Base_Final$SG_PARTIDO))
## Criando as Variáveis
Base_Final$ln_votos <- log(Base_Final$QT_VOTOS_NOMINAIS + 1)
Base_Final$ln_gasto <- log(Base_Final$VR_DESPESA_CONTRATADA + 1)
Base_Final$eleito <- ifelse(startsWith(Base_Final$DS_SIT_TOT_TURNO, "ELEITO"), 1, 0)

# Genero. Categoria omitida: masculino
Base_Final$mulher <- ifelse(Base_Final$DS_GENERO == "FEMININO", 1, 0)
Base_Final$genero_nao_divulgavel <- ifelse(endsWith(Base_Final$DS_GENERO, "VEL"), 1, 0)

# Cor/raca. Categoria omitida: branca
Base_Final$preta <- ifelse(Base_Final$DS_COR_RACA == "PRETA", 1, 0)
Base_Final$parda <- ifelse(Base_Final$DS_COR_RACA == "PARDA", 1, 0)
Base_Final$amarela <- ifelse(Base_Final$DS_COR_RACA == "AMARELA", 1, 0)
Base_Final$indigena <- ifelse(startsWith(Base_Final$DS_COR_RACA, "IND"), 1, 0)
Base_Final$cor_nao_informada <- ifelse(endsWith(Base_Final$DS_COR_RACA, "INFORMADO"), 1, 0)
Base_Final$cor_nao_divulgavel <- ifelse(endsWith(as.character(Base_Final$DS_COR_RACA), "VEL"), 1, 0)

nascimento <- as.Date(Base_Final$DT_NASCIMENTO, "%d/%m/%Y")
eleicao <- as.Date("2022-10-02")
anos <- as.numeric(format(eleicao, "%Y")) - as.numeric(format(nascimento, "%Y"))
ja_fez_aniversario <- format(eleicao, "%m-%d") >= format(nascimento, "%m-%d")
Base_Final$idade <- ifelse(ja_fez_aniversario, anos, anos - 1)
Base_Final$incumb <- ifelse(Base_Final$DS_OCUPACAO == "DEPUTADA/DEPUTADO", 1, 0)

write.csv(Base_Final, file = "Base_Final.csv", row.names = FALSE, fileEncoding = "UTF-8")

# Mesma amostra nos modelos que usam idade: as duas datas vazias saem
base_reg <- Base_Final[!is.na(Base_Final$idade), ]

# 3. Regressões
m1 <- lm(QT_VOTOS_NOMINAIS ~ VR_DESPESA_CONTRATADA, data = base_reg)
summary(m1)

m2 <- lm(
  QT_VOTOS_NOMINAIS ~ VR_DESPESA_CONTRATADA + idade + incumb + mulher +
    preta + parda + amarela + indigena + cor_nao_informada +
    as.factor(DS_GRAU_INSTRUCAO),
  data = base_reg
)
summary(m2)

m3 <- lm(
  QT_VOTOS_NOMINAIS ~ VR_DESPESA_CONTRATADA + idade + incumb + mulher +
    preta + parda + amarela + indigena + cor_nao_informada +
    as.factor(DS_GRAU_INSTRUCAO) + as.factor(SG_UF) + as.factor(SG_PARTIDO),
  data = base_reg
)
summary(m3)
m4 <- lm(ln_votos ~ ln_gasto, data = base_reg)
summary(m4)

m5 <- lm(
  ln_votos ~ ln_gasto + idade + incumb + mulher +
    preta + parda + amarela + indigena + cor_nao_informada +
    as.factor(DS_GRAU_INSTRUCAO),
  data = base_reg
)
summary(m5)

m6 <- lm(
  ln_votos ~ ln_gasto + idade + incumb + mulher +
    preta + parda + amarela + indigena + cor_nao_informada +
    as.factor(DS_GRAU_INSTRUCAO) + as.factor(SG_UF) + as.factor(SG_PARTIDO),
  data = base_reg
)
summary(m6)

m7 <- lm(
  ln_votos ~ ln_gasto + idade + incumb + ln_gasto:incumb + mulher +
    preta + parda + amarela + indigena + cor_nao_informada +
    as.factor(DS_GRAU_INSTRUCAO) + as.factor(SG_UF) + as.factor(SG_PARTIDO),
  data = base_reg
)
summary(m7)

m_lpm <- lm(
  eleito ~ ln_gasto + idade + incumb + mulher +
    preta + parda + amarela + indigena + cor_nao_informada +
    as.factor(DS_GRAU_INSTRUCAO) + as.factor(SG_UF),
  data = base_reg
)
coeftest(m_lpm, vcov. = vcovHC, type = "HC1")

ajustado_lpm <- fitted(m_lpm)
c(minimo = min(ajustado_lpm), maximo = max(ajustado_lpm))
c(abaixo_de_0 = sum(ajustado_lpm < 0), acima_de_1 = sum(ajustado_lpm > 1))

m_logit <- glm(
  eleito ~ ln_gasto + idade + incumb + mulher +
    preta + parda + amarela + indigena + cor_nao_informada +
    as.factor(DS_GRAU_INSTRUCAO) + as.factor(SG_UF),
  data = base_reg,
  family = binomial(link = "logit")
)
summary(m_logit)

m_probit <- glm(
  eleito ~ ln_gasto + idade + incumb + mulher +
    preta + parda + amarela + indigena + cor_nao_informada +
    as.factor(DS_GRAU_INSTRUCAO) + as.factor(SG_UF),
  data = base_reg,
  family = binomial(link = "probit")
)
summary(m_probit)

efeito_ln_gasto <- c(
  MQO = unname(coef(m_lpm)["ln_gasto"]),
  Logit = mean(dlogis(predict(m_logit, type = "link"))) * unname(coef(m_logit)["ln_gasto"]),
  Probit = mean(dnorm(predict(m_probit, type = "link"))) * unname(coef(m_probit)["ln_gasto"])
)
efeito_ln_gasto

ep_eleito <- list(
  sqrt(diag(vcovHC(m_lpm, type = "HC1"))),
  sqrt(diag(vcov(m_logit))),
  sqrt(diag(vcov(m_probit)))
)

stargazer(
  m_lpm, m_logit, m_probit,
  type = "text",
  se = ep_eleito,
  omit = "SG_UF|SG_PARTIDO",
  column.labels = c("MQO", "Logit", "Probit"),
  dep.var.labels = "Eleito"
)

####Visualizações

c(m4 = nobs(m4), m5 = nobs(m5), m6 = nobs(m6), m7 = nobs(m7))

vars_desc <- c(
  "QT_VOTOS_NOMINAIS", "VR_DESPESA_CONTRATADA", "ln_votos", "ln_gasto",
  "idade", "mulher", "preta", "parda", "amarela", "indigena", "eleito", "incumb"
)
desc <- data.frame(
  variavel = vars_desc,
  N = sapply(vars_desc, function(v) sum(!is.na(base_reg[[v]]))),
  media = sapply(vars_desc, function(v) mean(base_reg[[v]], na.rm = TRUE)),
  sd = sapply(vars_desc, function(v) sd(base_reg[[v]], na.rm = TRUE)),
  minimo = sapply(vars_desc, function(v) min(base_reg[[v]], na.rm = TRUE)),
  maximo = sapply(vars_desc, function(v) max(base_reg[[v]], na.rm = TRUE))
)
desc

medias_eleito <- aggregate(cbind(QT_VOTOS_NOMINAIS, VR_DESPESA_CONTRATADA) ~ eleito, data = base_reg, FUN = mean)
medias_mulher <- aggregate(cbind(QT_VOTOS_NOMINAIS, VR_DESPESA_CONTRATADA) ~ mulher, data = base_reg, FUN = mean)
medias_incumb <- aggregate(cbind(QT_VOTOS_NOMINAIS, VR_DESPESA_CONTRATADA) ~ incumb, data = base_reg, FUN = mean)
medias_eleito
medias_mulher
medias_incumb

cor(base_reg[, c("ln_votos", "ln_gasto", "idade", "mulher", "incumb")], use = "complete.obs")

ep_log <- list(
  sqrt(diag(vcovHC(m4, type = "HC1"))),
  sqrt(diag(vcovHC(m5, type = "HC1"))),
  sqrt(diag(vcovHC(m6, type = "HC1"))),
  sqrt(diag(vcovHC(m7, type = "HC1")))
)

stargazer(
  m4, m5, m6, m7,
  type = "text",
  se = ep_log,
  omit = "SG_UF|SG_PARTIDO",
  column.labels = c("so gasto", "controles", "completo", "interacao")
)

ep_nivel <- list(
  sqrt(diag(vcovHC(m1, type = "HC1"))),
  sqrt(diag(vcovHC(m2, type = "HC1"))),
  sqrt(diag(vcovHC(m3, type = "HC1")))
)

stargazer(
  m1, m2, m3,
  type = "text",
  se = ep_nivel,
  omit = "SG_UF|SG_PARTIDO",
  column.labels = c("so gasto", "controles", "completo")
)

dir.create("figuras", showWarnings = FALSE)

png("figuras/dispersao_log.png", width = 1000, height = 700)
plot(base_reg$ln_gasto, base_reg$ln_votos,
     xlab = "ln(despesa + 1)", ylab = "ln(votos + 1)",
     pch = 16, col = rgb(0, 0, 0, 0.2),
     main = "Votos e despesa, em log")
abline(m4)
dev.off()

png("figuras/hist_ln_votos.png", width = 1000, height = 700)
hist(Base_Final$ln_votos, breaks = 40, col = "grey80", border = "white",
     main = "ln(votos + 1)", xlab = "ln(votos + 1)", ylab = "Candidatos")
dev.off()

png("figuras/hist_ln_gasto.png", width = 1000, height = 700)
hist(Base_Final$ln_gasto, breaks = 40, col = "grey80", border = "white",
     main = "ln(despesa + 1)", xlab = "ln(despesa + 1)", ylab = "Candidatos")
dev.off()

png("figuras/hist_votos_ate_50mil.png", width = 1000, height = 700)
hist(Base_Final$QT_VOTOS_NOMINAIS[Base_Final$QT_VOTOS_NOMINAIS <= 50000],
     breaks = 40, col = "grey80", border = "white",
     main = "Votos nominais ate 50 mil", xlab = "Votos nominais", ylab = "Candidatos")
dev.off()

png("figuras/hist_despesa_ate_500mil.png", width = 1000, height = 700)
hist(Base_Final$VR_DESPESA_CONTRATADA[Base_Final$VR_DESPESA_CONTRATADA <= 500000],
     breaks = 40, col = "grey80", border = "white",
     main = "Despesa contratada ate 500 mil", xlab = "Reais", ylab = "Candidatos")
dev.off()

png("figuras/residuos_m6.png", width = 1000, height = 700)
plot(fitted(m6), resid(m6), pch = 16, col = rgb(0, 0, 0, 0.15),
     xlab = "valores ajustados de ln_votos", ylab = "residuos",
     main = "Residuos do m6")
abline(h = 0)
dev.off()
#Testes de Hipótese

bptest(m3)
bptest(m6)
coeftest(m6, vcov. = vcovHC, type = "HC1")
coeftest(m3, vcov. = vcovHC, type = "HC1")
coeftest(m7, vcov. = vcovHC, type = "HC1")

vc6 <- vcovHC(m6, type = "HC1")
vc7 <- vcovHC(m7, type = "HC1")
linearHypothesis(m7, "ln_gasto:incumb", vcov. = vc7)
linearHypothesis(m7, "ln_gasto + ln_gasto:incumb = 0", vcov. = vc7)

linearHypothesis(m6, "mulher", vcov. = vc6)
linearHypothesis(m6, c("preta", "parda", "amarela", "indigena", "cor_nao_informada"), vcov. = vc6)
linearHypothesis(m6, matchCoefs(m6, "DS_GRAU_INSTRUCAO"), vcov. = vc6)
linearHypothesis(m6, matchCoefs(m6, "SG_UF"), vcov. = vc6)
linearHypothesis(m6, matchCoefs(m6, "SG_PARTIDO"), vcov. = vc6)

vif(m6)