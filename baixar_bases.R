# Baixa os zips oficiais do TSE, extrai so o CSV do Brasil usado no
# trabalho e apaga o zip. O resto do pacote nao e gravado.

dir.create("Dados", showWarnings = FALSE)

bases <- data.frame(
  url = c(
    "https://cdn.tse.jus.br/estatistica/sead/odsele/consulta_cand/consulta_cand_2022.zip",
    "https://cdn.tse.jus.br/estatistica/sead/odsele/prestacao_contas/prestacao_de_contas_eleitorais_candidatos_2022.zip",
    "https://cdn.tse.jus.br/estatistica/sead/odsele/votacao_candidato_munzona/votacao_candidato_munzona_2022.zip"
  ),
  arquivo = c(
    "consulta_cand_2022_BRASIL.csv",
    "despesas_contratadas_candidatos_2022_BRASIL.csv",
    "votacao_candidato_munzona_2022_BRASIL.csv"
  ),
  stringsAsFactors = FALSE
)

baixar_e_extrair <- function(url, arquivo) {
  destino <- file.path("Dados", arquivo)
  if (file.exists(destino) && isTRUE(file.info(destino)$size > 1000)) {
    message("Ja existe, nao baixei de novo: ", destino)
    return(invisible(destino))
  }

  zip_tmp <- tempfile(fileext = ".zip")
  on.exit(unlink(zip_tmp), add = TRUE)

  message("Baixando ", basename(url))
  download.file(url, destfile = zip_tmp, mode = "wb", quiet = FALSE)

  message("Extraindo ", arquivo)
  unzip(zipfile = zip_tmp, files = arquivo, exdir = "Dados", junkpaths = TRUE)

  if (!file.exists(destino) || file.info(destino)$size < 1000) {
    stop("Nao achei ", arquivo, " dentro do zip, ou o arquivo ficou vazio.")
  }

  message("Salvo em ", destino, ". O zip temporario sera apagado.")
  invisible(destino)
}

for (i in seq_len(nrow(bases))) {
  baixar_e_extrair(bases$url[i], bases$arquivo[i])
}
