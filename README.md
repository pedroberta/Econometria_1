# Econometria I — gasto de campanha e votos

Trabalho de Econometria I de Eduardo Takaesu Coelho e Pedro Berta Farias.

A pergunta do trabalho é o efeito do gasto de campanha sobre os votos de candidatos a deputado federal em 2022.

## O que tem em cada pasta

- `Trabalho_Final.R`, na raiz: script do trabalho.
- `baixar_bases.R`, na raiz: baixa as duas bases grandes para `Dados/`.
- `Dados/`: bases do Brasil. Neste repositório está apenas `consulta_cand_2022_BRASIL.csv` (cerca de 17 MB).
- `Regras/`: regras, skills e agents do Cursor copiados de `.cursor/` (`rules/`, `skills/` e `agents/`).
- `requirements.txt`: pacotes de R usados pelo script. Este é um projeto em R (R 4.5.x).

## Como executar

O diretório de trabalho tem de ser a pasta do projeto, isto é, a pasta que contém `Trabalho_Final.R`.

No R:

```r
source("Trabalho_Final.R")
```

No terminal, a partir dessa mesma pasta:

```text
Rscript Trabalho_Final.R
```

O script usa os pacotes listados em `requirements.txt`: `data.table`, `AER`, `stargazer` e `sandwich`.

Ele procura cada CSV primeiro na pasta do projeto e, se não achar, em `Dados/`. Os três nomes são:

- `consulta_cand_2022_BRASIL.csv`
- `despesas_contratadas_candidatos_2022_BRASIL.csv`
- `votacao_candidato_munzona_2022_BRASIL.csv`

A cópia versionada da base de candidatos está em `Dados/consulta_cand_2022_BRASIL.csv`.

## Bases grandes

O GitHub recusa arquivos acima de 100 MB. Estas duas bases não estão neste repositório:

- `despesas_contratadas_candidatos_2022_BRASIL.csv` — cerca de 1,3 GB (1.344.031.169 bytes)
- `votacao_candidato_munzona_2022_BRASIL.csv` — cerca de 4,3 GB (4.298.074.975 bytes)

Para baixá-las para `Dados/`, publique cada arquivo num link direto (OneDrive, Google Drive ou Zenodo: ao abrir o link, o arquivo começa a baixar). Cole as duas URLs na tabela `bases` de `baixar_bases.R` e rode:

```r
source("baixar_bases.R")
```

O `Trabalho_Final.R` passa a achar esses CSV em `Dados/`.
