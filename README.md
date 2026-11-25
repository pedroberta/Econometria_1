# Econometria I — Gasto de Campanha e Votos

Trabalho de Econometria I de Eduardo Takaesu Coelho e Pedro Berta Farias.

A pergunta do trabalho é o efeito do gasto de campanha sobre os votos de candidatos a deputado federal em 2022.

## O que tem em cada pasta

- `Trabalho_Final.R`, na raiz: script do trabalho. Ele carrega os pacotes, monta a base, estima os modelos, grava as figuras e roda os testes.
- `baixar_bases.R`, na raiz: baixa os zips oficiais do TSE, extrai só o CSV do Brasil usado no trabalho e apaga o zip.
- `Dados/`: pasta das bases do Brasil. Os três CSV não vão no GitHub. O `baixar_bases.R` grava eles aí.
- `figuras/`: PNG gerados pelo `Trabalho_Final.R` quando ele é executado. Essa pasta não vem pronta no clone.
- `Regras/`: regras, skills e agents do Cursor copiados de `.cursor/` (`rules/`, `skills/` e `agents/`).
- `requirements.txt`: lista dos pacotes de R para instalar. Este é um projeto em R (R 4.5.x). O arquivo não carrega os pacotes. Quem roda o script ainda precisa das linhas `library` dentro do `Trabalho_Final.R`.

## Pacotes

Instale, no R, os nomes que estão em `requirements.txt`:

```r
install.packages(c("data.table", "AER", "stargazer", "sandwich"))
```

`AER` traz junto `lmtest`, `sandwich` e `car`, usados nos testes.

## Como executar

O diretório de trabalho tem de ser a pasta do projeto, a que contém `Trabalho_Final.R`.

Se as bases grandes ainda não estiverem na máquina:

```r
source("baixar_bases.R")
```

Esse comando baixa três zips do TSE, extrai só estes CSV e apaga o zip:

- `consulta_cand_2022_BRASIL.csv`
- `despesas_contratadas_candidatos_2022_BRASIL.csv` (cerca de 1,3 GB)
- `votacao_candidato_munzona_2022_BRASIL.csv` (cerca de 4,3 GB)

Os outros arquivos de cada zip não são gravados. Se o CSV já existir na pasta do projeto ou em `Dados/`, o script não baixa de novo.

Depois:

```r
source("Trabalho_Final.R")
```

No terminal, a partir da mesma pasta:

```text
Rscript Trabalho_Final.R
```

O `Trabalho_Final.R` procura cada CSV primeiro na pasta do projeto e, se não achar, em `Dados/`. As figuras vão para `figuras/`.
