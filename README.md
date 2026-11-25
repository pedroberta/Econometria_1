# Econometria I — gasto de campanha e votos

Trabalho de Econometria I de Eduardo Takaesu Coelho e Pedro Berta Farias.

A pergunta do trabalho é o efeito do gasto de campanha sobre os votos de candidatos a deputado federal em 2022.

## O que tem em cada pasta

- `Trabalho_Final.R`, na raiz: script do trabalho.
- `Dados/`: bases do Brasil. Neste repositório está apenas `consulta_cand_2022_BRASIL.csv` (cerca de 17 MB; 17.141.760 bytes).
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

Ele lê, no diretório de trabalho, estes três arquivos, com estes nomes:

- `consulta_cand_2022_BRASIL.csv`
- `despesas_contratadas_candidatos_2022_BRASIL.csv`
- `votacao_candidato_munzona_2022_BRASIL.csv`

A cópia versionada da base de candidatos está em `Dados/consulta_cand_2022_BRASIL.csv`.

## Bases que ficam só na máquina local

O GitHub recusa arquivos acima de 100 MB. Estas duas bases não estão neste repositório. Coloque-as na pasta `Dados/` com os nomes abaixo:

- `despesas_contratadas_candidatos_2022_BRASIL.csv` — cerca de 1,3 GB (1.344.031.169 bytes)
- `votacao_candidato_munzona_2022_BRASIL.csv` — cerca de 4,3 GB (4.298.074.975 bytes)

Como o script abre esses nomes no diretório de trabalho, na hora de rodar os três CSV precisam estar nessa pasta, com esses nomes.
