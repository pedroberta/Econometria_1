# Baixa as bases grandes para a pasta Dados.
# O GitHub nao aceita esses arquivos. O repositorio guarda so o link.
# Cole um link direto: ao abrir no navegador, o arquivo comeca a baixar,
# em vez de abrir uma pagina.

dir.create("Dados", showWarnings = FALSE)

bases <- data.frame(
  arquivo = c(
    "despesas_contratadas_candidatos_2022_BRASIL.csv",
    "votacao_candidato_munzona_2022_BRASIL.csv"
  ),
  url = c(
    "",
    ""
  ),
  stringsAsFactors = FALSE
)

baixar_uma <- function(url, destino) {
  if (!nzchar(url)) {
    stop(
      "Falta o link de ", basename(destino),
      ". Abra baixar_bases.R e cole a URL na tabela bases."
    )
  }
  if (file.exists(destino)) {
    message("Ja existe, nao baixei de novo: ", destino)
    return(invisible(destino))
  }
  message("Baixando ", basename(destino))
  download.file(url, destfile = destino, mode = "wb", quiet = FALSE)
  if (!file.exists(destino) || file.info(destino)$size < 1000) {
    stop("O download de ", basename(destino), " nao gerou o CSV. Confira se o link e direto.")
  }
  message("Salvo em ", destino)
  invisible(destino)
}

for (i in seq_len(nrow(bases))) {
  baixar_uma(bases$url[i], file.path("Dados", bases$arquivo[i]))
}
