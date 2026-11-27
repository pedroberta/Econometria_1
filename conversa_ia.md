# VS Code integration project
_Exported on 11/24/2026 at 22:25:39 GMT-3 from Cursor (3.17.21)_

---

**User**

eu gostaria que voce me ajudasse a fazer esse projeto, primeiramente de uma boa lida em tudo que tenho que fazer e nas orientações nessa pasta, considere que quero escrever o código via vs code, então primeiro quero saber como fazer para integrar voce no vs code que tenho aberto

---

**Cursor**

Vou ler o material da pasta e, em paralelo, ver como ligar esta conversa ao VS Code que você já tem aberto.

A pasta tem dois PDFs: o enunciado da entrega e as orientações de uso de IA. Vou extrair o texto dos dois antes de te dizer como trabalhar no editor.

Você já está com as duas janelas certas, e não precisa instalar nada dentro do VS Code para me usar.

O Visual Studio Code está aberto na pasta `Econometria_Projeto`. Eu estou nesta conversa do Cursor, na mesma pasta. Não existe um passo de “ligar” um ao outro: o que você salvar no VS Code eu leio daqui, porque é o mesmo diretório no disco.

## Como trabalhar daqui para a frente

1. No VS Code, abra o explorador de arquivos com `Ctrl+Shift+E` e feche a aba Welcome, se ela estiver na frente. Os dois PDFs já estão nessa pasta.
2. Quando for escrever o script, crie um arquivo novo nessa pasta, com extensão `.R`, e salve.
3. Volte a este chat e diga o que fez, ou cole a mensagem de erro. Eu abro o arquivo que você salvou.
4. Para o R funcionar no editor, instale a extensão **R** (editora REditorSupport): `Ctrl+Shift+X`, busque “R” e clique em Install. O R 4.5.1 já está no computador, em `C:\Program Files\R\R-4.5.1\bin\x64\R.exe`, mas não está no PATH. Se a extensão não achar o R sozinha, em Settings procure `r.rterm.windows` e `r.rpath.windows` e aponte os dois para esse `R.exe`.

Mantenha **esta mesma conversa** durante o trabalho inteiro. A disciplina pede, na entrega, o link público de uma única conversa com a IA.

## O que li na pasta

A Entrega 1 já define o trabalho, de Eduardo Takaesu Coelho e Pedro Berta Farias:

- **Pergunta:** qual é o efeito do gasto de campanha sobre a quantidade de votos dos candidatos a deputado federal em 2022?
- **Bases:** Prestação de Contas Eleitorais 2022 (TSE), Resultados Eleitorais 2022 (TSE), Candidatos 2022 (TSE) e Censo Demográfico 2022 (IBGE).

O curso é de MQO, variáveis instrumentais, Probit e Logit, só com corte transversal, em R.

Vou seguir as orientações da professora. Em cada pedido eu digo a etapa e o papel:

- **Tutora:** pergunto e aponto o caminho, sem entregar a resposta.
- **Mentora:** você escreve primeiro; eu comento, e você reescreve.
- **Ferramenta:** só em tarefas operacionais, como baixar e importar a base, estrutura do relatório, gramática, ABNT e repositório.

Não vou escolher o modelo, interpretar coeficiente, redigir a análise nem escrever a linha de R com as variáveis de vocês. Para código, explico a função e dou um exemplo genérico. A exceção é o script de download e importação, que posso escrever completo. Se aparecer um erro do R, explico a mensagem e sugiro como corrigir.

Quando o VS Code estiver com a extensão R instalada, diga em que etapa vocês estão (por exemplo, baixar as bases do TSE) que eu assumo o papel permitido.

---

**User**

mas podemos fazer em python também? o que voce recomenfda? além disso eu precisaria que voce me ajudasse a conseguir mandar essa conversa inteira para ela, é possível via link ou não?

---

**Cursor**

A disciplina fixa a linguagem do trabalho, então vou cruzar isso com as orientações e, em seguida, verificar se o Cursor gera um link público desta conversa.

Recomendo fazer o trabalho em R. Sobre o link: dá para mandar a conversa inteira por um link público, mas só se o seu plano do Cursor tiver essa opção; se o botão não aparecer, a saída é exportar o texto e publicar esse arquivo.

## Linguagem

A disciplina está montada em R. O documento de orientações fala em script em R, em funções do R e em rodar o script do zero numa sessão limpa antes de entregar. MQO, variáveis instrumentais, Probit e Logit em corte transversal são exatamente o que o curso cobre, e a aula vai mostrar isso em R. O script que vocês entregam precisa ser o que a professora consegue abrir e reproduzir.

Python estima os mesmos modelos, com a biblioteca `statsmodels`. Para este trabalho, isso não muda a recomendação: o material, a correção e a regra de reprodutibilidade estão em R. O R 4.5.1 já está instalado neste computador.

Etapa: organização do ambiente. Papel: tutora. A escolha continua com vocês; o caminho que a disciplina pede é o R.

## Link da conversa

Sim. A entrega pede um link público de uma única conversa, que qualquer pessoa abre sem conta no Cursor. Nesta janela do Agents, abra o menu desta conversa (ícone de compartilhar ou os três pontos no topo) e escolha **Share**, depois **Public**. O link fica no formato `cursor.com/s/...`. Quem tiver o endereço vê a conversa inteira, só para leitura.

A documentação atual do Cursor limita esse compartilhamento aos planos Teams e Enterprise. Num plano individual o botão pode não existir. Se não aparecer:

1. No mesmo menu, use **Export Chat**, se essa opção estiver lá. Isso gera um arquivo com a conversa.
2. Publique esse arquivo num lugar aberto, por exemplo um Google Doc com acesso “qualquer pessoa com o link” ou um arquivo no repositório do trabalho, e entregue esse endereço.

Faça isso no fim do trabalho. O link guarda a conversa como ela está no momento em que você compartilha. Se a conversa continuar depois, gere o link de novo.

Não consigo criar esse link daqui. O botão é seu, nesta janela. Se quiser, no próximo passo me diga se o menu Share apareceu que eu te digo exatamente o que colar no relatório.

---

**User**

não entendi onde consigo compartilhar, agora eu gostaria que voce criasse essas rules e skills e subagents que ela fala nesse documento para mim, sej muito ativo e me faça várias perguntas, não me de respostas prontas e sempre cheque se o código está escrito corretamente

---

**Cursor**

Vou reler as orientações e o jeito certo de criar regras e skills no Cursor, para montar isso no projeto sem antecipar as decisões do trabalho. O ponto do compartilhamento eu explico em seguida, no menu desta janela.

O documento não pede produtos do Cursor: ele define três papéis (tutora, mentora e ferramenta). Vou gravar esses papéis no projeto, para esta conversa passar a perguntar e a conferir o código em vez de escrever o trabalho.

**Decisões que ficam com vocês**

> **Uma linha da base de vocês representa o quê? A unidade de observação muda o que “voto” e “gasto” significam.**
> - Um candidato a deputado federal em 2022
> - Um candidato em cada município onde teve voto
> - Um município
> - Ainda não decidimos ✔

> **Quando vocês escrevem “gasto de campanha”, qual medida têm em mente?**
> - Despesa total declarada na prestação de contas ✔
> - Receita total arrecadada
> - Só um tipo de despesa (ainda vamos escolher qual)
> - Ainda não definimos a medida

> **“Quantidade de votos recebidos” entra no trabalho como o quê?**
> - O número de votos do candidato ✔
> - Os votos em proporção do eleitorado ou dos votos válidos
> - Ainda não definimos

> **Para que o Censo Demográfico 2022 entra no trabalho? Qual conceito ele mede?**
> - Uma característica do município em que o candidato concorre ✔
> - Uma característica do eleitorado
> - Ainda não sabemos por que o Censo está na lista
> - Outro conceito, que eu explico no chat

> **No topo desta conversa, na janela Cursor Agents, o que aparece à direita do título?**
> - Um ícone de compartilhar
> - Um menu de três pontos ✔
> - Nenhum dos dois

O compartilhamento está nesse menu de três pontos, no topo desta conversa. Clique nele, escolha **Share** (ou **Compartilhar**) e depois **Public**. Copie o endereço que começa com `cursor.com/s/`. Qualquer pessoa com esse link abre a conversa inteira, sem conta no Cursor. Gere esse link de novo no fim do trabalho, porque ele guarda a conversa como ela está na hora em que você clica. Se nesse menu não existir Share, me escreva o nome de cada item que aparecer.

As regras da professora já estão gravadas neste projeto. A conversa passa a declarar a subetapa e o papel, a fazer perguntas e a conferir o script em R no disco, com `parse`, sem reescrever a linha de vocês. Há uma regra sempre ligada, outra só para arquivos `.R`, duas skills (`econometria-i` e `revisar-script-r`) e três subagentes só de leitura: `tutora`, `mentora` e `revisora-r`.

Subetapa 1.3 — papel: tutora. Viabilidade da pergunta.

O que vocês já fecharam: o gasto é a despesa total declarada na prestação de contas; o resultado é o número de votos do candidato; o Censo entra como característica do município em que o candidato concorre. A unidade de observação continua em aberto, e é ela que decide se essas três medidas cabem na mesma linha da base.

1. Deputado federal é eleito no estado, e os votos dele se somam em vários municípios. Se cada linha for um candidato, existe um município só para colar o Censo? Se cada linha for um candidato em um município, a despesa total declarada é daquele município ou da campanha inteira?
2. Qual desses dois encaixes vocês aceitam abrir mão, e por quê?
3. Dois candidatos com o mesmo número de votos, um em São Paulo e outro no Acre, contam como o mesmo resultado na pergunta de vocês? O que precisaria ser parecido entre eles para essa comparação valer?
4. Escrevam em uma frase, sem nome de coluna, qual característica do município o Censo tem que medir. Por que essa característica mudaria os votos mesmo com a despesa igual?
5. A pergunta usa a palavra “efeito”. O que, na explicação de vocês, faz a despesa mudar os votos sem que a expectativa de votos também mude a despesa?
6. Abram o dicionário da prestação de contas do TSE e me digam em que arquivo a despesa total aparece e qual é a unidade de cada linha desse arquivo. A leitura do dicionário é de vocês; eu não mapeio a coluna.

---

**User**

voce consegue ver as bases que eu importei do TSE? consegue ver que já conseguimos montar nossa regressão principal, além disso gostaria de começar a montar o código dessa base de dados de forma completa, consegue me ajudar?

---

**Cursor**

Subetapa 3.2 e 8.1 — vou olhar primeiro o que já está na pasta: as bases do TSE e o script da regressão principal. O código completo eu só escrevo na parte de baixar e importar; o restante eu confiro e devolvo em pergunta.

As bases estão na pasta, em três zips. O script que achei não é uma regressão. Vou ler o cabeçalho de cada arquivo para separar o que já dá para importar do que ainda é decisão de vocês.

A regressão não está na pasta. O único script é o `dados.R`, e ele quebra antes de estimar qualquer modelo. Vou gravar o código de importação dos zips, que é a parte que posso escrever por completo, e testar com o Acre antes de falar que funciona.

Subetapa 3.2 — papel: ferramenta na importação. Subetapa 5.3 — papel: tutora no `dados.R`. A regressão principal não está nesta pasta.

Procurei na pasta do projeto. Há três zips do TSE e um único script, o `dados.R`. Esse script não estima modelo. Se a regressão estiver aberta e ainda não salva no VS Code, salve o arquivo nesta pasta e me chame de novo para eu conferir a fórmula.

## O que o `dados.R` faz hoje

O `parse` para na linha 1. A mensagem do R é `unexpected symbol` na linha 2: a aspa de `readRDS("` abre um texto e não fecha, então o R lê o resto do arquivo como se ainda estivesse dentro dessa frase.

Além da aspa, `readRDS` lê um arquivo `.rds`. Na pasta não há `.rds`. O que vocês baixaram são `.zip` com `.csv`. As linhas seguintes usam `grupo` e `situacao`. Essas colunas não existem nos três zips do TSE.

## O que eu escrevi

Criei o `importar_tse.R`. Ele só importa. Não recorta deputado federal, não soma despesa, não junta voto com gasto e não estima a regressão. Cada parte faz o seguinte:

- `recorte` escolhe qual CSV ler. Está em `"AC"` para o teste. O arquivo `"BRASIL"` já reúne todas as UFs; ler os dois ao mesmo tempo duplica candidato.
- `ler_csv_do_zip` abre o zip, lê o CSV com separador `;` e acento do TSE, e mantém identificadores como texto para a junção não perder dígito.
- O laço das colunas `VR_` troca a vírgula decimal por ponto e converte em número.

Rodei com `recorte <- "AC"`. A leitura passou no `parse` e devolveu:

| Objeto | Linhas | Colunas |
| --- | ---: | ---: |
| `candidatos` | 542 | 51 |
| `votos_munzona` | 10.948 | 50 |
| `despesas_contratadas` | 35.532 | 53 |
| `despesas_pagas` | 35.082 | 28 |

`VR_DESPESA_CONTRATADA` e `VR_PAGTO_DESPESA` ficaram numéricas, sem valor ausente nesse teste. `SQ_CANDIDATO` ficou como texto onde essa coluna existe.

No VS Code, abra a pasta do projeto, coloque o diretório de trabalho nela e rode o `importar_tse.R`. Quando o Acre bater com o que vocês esperam, troquem a linha `recorte <- "AC"` para `recorte <- "BRASIL"`. O arquivo de votos do Brasil, descompactado, passa de 4 GB. Vale conferir espaço em disco antes.

O zip de prestação de contas também tem receitas. O script não as lê.

## O que falta decidir antes do restante do código

1. Onde está a regressão principal? Salvem o arquivo aqui.
2. Uma linha de `votos_munzona` é um candidato em um município e em uma zona, e traz `QT_VOTOS_NOMINAIS`. Uma linha de `despesas_contratadas` é um documento de despesa, com `SQ_CANDIDATO` e `VR_DESPESA_CONTRATADA`. Uma linha de `candidatos` é um candidato. Qual dessas linhas é a linha da regressão?
3. `despesas_pagas` tem `VR_PAGTO_DESPESA` e `SQ_DESPESA`. `SQ_CANDIDATO` não está nesse arquivo. Qual dos dois arquivos é a despesa total declarada que vocês escolheram, e como o pagamento se liga ao candidato?
4. Os três arquivos trazem todos os cargos. Escrevam vocês a linha que fica só com deputado federal, e eu confiro.
5. O código de município em `votos_munzona` chegou como número. O Censo ainda não está na pasta. O código municipal do Censo que vocês vão usar é texto com zero à esquerda?

---

**User**

<timestamp>Monday, Nov 23, 2026, 2:00 PM (UTC-3)</timestamp>
<system_notification>
The following task has finished. If you were already aware, ignore this notification and do not restate prior responses.

<task>
kind: shell
status: success
task_id: 878626
title: Resolve accented vs plain folder and locate data
tool_call_id: call-9ba8f07b-141c-41ba-afba-59a92b675586-40
fc_86f77451-769e-4984-b50c-2f251d53b911_0
output_path: C:\Users\pedro\.cursor\projects\c-Users-pedro-OneDrive-rea-de-Trabalho-Econometria-Projeto\terminals\878626.txt
</task>
</system_notification>
<user_query>Briefly inform the user about the task result and perform any follow-up actions (if needed). If there's no follow-ups needed, don't explicitly say that.</user_query>

---

**Cursor**

A busca na pasta terminou. Os três zips do TSE e o `dados.R` estão em `Área de Trabalho\Econometria_Projeto`, e o `importar_tse.R` foi gravado e testado nessa mesma pasta.

---

**User**

mas isso pode fazer, não está contra a regra de uso de ia?

---

**Cursor**

Subetapa 3.2 — papel: ferramenta. O `importar_tse.R` está dentro da exceção que a professora escreveu.

Na orientação, baixar e importar a base é o único trecho em que a IA pode entregar o código completo, desde que vocês entendam cada parte e confiram o resultado. Foi só isso que o arquivo faz: abre os três zips, lê o CSV com o separador e o acento do TSE, guarda o identificador do candidato como texto e transforma a vírgula decimal das colunas `VR_` em número.

O restante continua com vocês. Eu não escolhi a despesa, não recortei deputado federal, não somei gasto, não juntei voto com despesa e não escrevi a regressão. O `recorte <- "AC"` é um teste de leitura. A base do trabalho só fica completa quando vocês trocam essa linha para `"BRASIL"` e conferem.

Três conferências que a regra deixa com vocês:

1. O que muda, na prática, quando `recorte` passa de `"AC"` para `"BRASIL"`?
2. Qual dos dois objetos é a despesa total declarada de vocês, `despesas_contratadas` ou `despesas_pagas`? Os dois foram lidos de propósito, sem essa escolha.
3. Peguem um candidato que vocês já conhecem e digam se a linha dele aparece em `candidatos` com o cargo certo.

---

**User**

Apenas para eu entender então esse código que voce gerou é apenas para checar a integridade da base

---

**Cursor**

Subetapa 3.2 — papel: ferramenta. O `importar_tse.R` lê os zips e monta quatro tabelas no R: `candidatos`, `votos_munzona`, `despesas_contratadas` e `despesas_pagas`.

A linha `recorte <- "AC"` faz a primeira execução usar só o Acre, para ver se a leitura abre, se o número de linhas aparece e se o valor com vírgula vira número. Quando essa leitura estiver conferida, a mesma função, com `recorte <- "BRASIL"`, monta as tabelas do país inteiro.

Conferir se a base está íntegra continua com vocês: dimensões, cargo, valores e um candidato que vocês já conhecem. O script não faz esse julgamento.

O que vocês esperam ver em cada uma dessas quatro tabelas quando o Acre terminar de carregar?

---

**User**

Beleza entendi estou rodando agora o Brasil

---

**Cursor**

Subetapa 3.2 — papel: ferramenta. Vou conferir se o script que está rodando é o do Brasil e o que o R já devolveu.

Subetapa 3.2 — papel: ferramenta. A linha 16 do `importar_tse.R` está com `recorte <- "BRASIL"`, então essa execução lê o arquivo nacional de cada zip.

O R fica em silêncio no meio de cada arquivo. A demora grande é `votos_munzona`: o CSV descompactado passa de 4 GB, e em seguida vêm as duas tabelas de despesa, também grandes. No fim têm que aparecer quatro mensagens, nesta ordem: `candidatos`, `votos_munzona`, `despesas_contratadas`, `despesas_pagas`.

Quando elas surgirem, cole aqui as quatro linhas. No teste do Acre eram 542, 10.948, 35.532 e 35.082 linhas. O Brasil precisa ficar bem acima desses quatro números. Se o R parar antes, cole a mensagem de erro inteira.

---

**User**

ele me retornou issocandidatos: 29322 linhas, 51 colunas
votos_munzona: 9377845 linhas, 50 colunas
despesas_contratadas: 2209945 linhas, 53 colunas
despesas_pagas: 2412116 linhas, 28 colunas

---

**Cursor**

Subetapa 3.2 — papel: ferramenta. A leitura nacional terminou e devolveu estas dimensões:

| Objeto | Brasil | Acre | Colunas |
| --- | ---: | ---: | ---: |
| `candidatos` | 29.322 | 542 | 51 |
| `votos_munzona` | 9.377.845 | 10.948 | 50 |
| `despesas_contratadas` | 2.209.945 | 35.532 | 53 |
| `despesas_pagas` | 2.412.116 | 35.082 | 28 |

O número de colunas é o mesmo do teste do Acre. O número de linhas do Brasil ficou acima do Acre nas quatro tabelas. O script não gravou arquivo: essas tabelas só continuam vivas se a sessão do R ainda estiver aberta.

1. As quatro tabelas ainda aparecem no Environment?
2. A tabela de votos cresceu muito mais do que a de candidatos. Isso combina com a linha de `votos_munzona` ser candidato–município–zona e a de `candidatos` ser um candidato?
3. 29.322 é o total de todos os cargos. A regressão de vocês usa esse total ou só deputado federal?

---

**User**

a regressão usa apenas deputado federal, então eu vou precisar fazer esse recorte, além disso, ainda não estou muito certo de qual medida de gasto eu deveria utilizar, consegue me ajudar nesses dois pontos iniciais

---

**Cursor**

Subetapa 6.1 — papel: mentora no recorte, e tutora na medida de gasto. Vou só confirmar, no arquivo de candidatos, como o cargo está escrito, para a pergunta não partir de um nome inventado.

Subetapa 6.1 — papel: mentora no recorte de deputado federal. Na medida de gasto, papel: tutora. A escolha da medida continua com vocês.

No arquivo de candidatos, o cargo está em `CD_CARGO` e `DS_CARGO`. Deputado federal aparece como código `6` e texto `DEPUTADO FEDERAL`, em 10.630 linhas. Os outros cargos estão no mesmo arquivo, então o recorte é uma linha de filtro em cada tabela que tenha cargo. A função, com dados fictícios, é esta:

```r
recortado <- subset(base_ficticia, codigo_do_cargo == 6)
```

Escrevam vocês a linha com os objetos de vocês. Antes de copiar o mesmo texto para as três tabelas, confiram se `votos_munzona` e `despesas_contratadas` usam o mesmo código e o mesmo texto. `despesas_pagas` não tem `CD_CARGO`, `DS_CARGO` nem `SQ_CANDIDATO`.

Sobre o gasto, os dois arquivos não medem a mesma coisa. `despesas_contratadas` tem uma linha por documento, com `SQ_CANDIDATO` e `VR_DESPESA_CONTRATADA`. `despesas_pagas` tem uma linha por pagamento, com `VR_PAGTO_DESPESA` e `SQ_DESPESA`, e não identifica o candidato. As definições oficiais estão nos PDFs `leiame_despesas-contratadas-candidatos.pdf` e `leiame_despesas-pagas-candidatos.pdf`, dentro do zip de prestação de contas. A leitura é de vocês.

1. O filtro fica no código `6` ou no texto `DEPUTADO FEDERAL`? Esse valor é igual nas três tabelas que têm cargo?
2. Entram os 10.630 registros desse cargo, ou só quem está com candidatura apta? Onde vocês vão olhar isso?
3. Qual frase é a despesa da pergunta de vocês: o valor contratado no documento ou o valor efetivamente pago?
4. Se for o valor pago, como o pagamento se liga ao deputado federal, já que `despesas_pagas` não traz o candidato?

---

**User**

eu gostaria então primeiro de agrupar cada um desses arquivos de candidatos em um único csv escrito Brasil e depois filtrar dessa grande base apenas os deputados federais

---

**Cursor**

Subetapa 6.1 — papel: mentora. Você propôs juntar os arquivos e, depois, ficar só com deputado federal. Vou olhar como os CSVs já estão nomeados dentro do zip antes de comentar esse caminho.

Subetapa 6.1 — papel: mentora. O CSV nacional de candidatos já existe e já foi lido.

Dentro de `consulta_cand_2022.zip`, o arquivo `consulta_cand_2022_BRASIL.csv` junta as UFs. É esse arquivo que o `importar_tse.R` leu quando `recorte` estava em `"BRASIL"`. O objeto `candidatos`, com 29.322 linhas e 51 colunas, é essa base. Há também um `consulta_cand_2022_BR.csv`, com 30 linhas, só presidente e vice-presidente, e essas linhas já estão dentro do arquivo `BRASIL`. Juntar de novo os CSVs por estado, o `_BR` e o `_BRASIL` repetiria candidato.

O mesmo vale para votos e despesas: o script já leu o CSV `BRASIL` de cada zip. Reescrever esses arquivos soltos na pasta copia de novo a base, inclusive os mais de 4 GB de votos.

O passo que ainda é de vocês é o filtro. No `candidatos`, o código `6` e o texto `DEPUTADO FEDERAL` marcam 10.630 linhas. Com dados fictícios, a função é:

```r
recortado <- subset(base_ficticia, codigo_do_cargo == 6)
```

Escrevam a linha no objeto `candidatos` e me digam quantas linhas sobraram.

1. O filtro de vocês chegou nas 10.630 linhas?
2. Neste passo o recorte fica só em `candidatos`, ou vocês também vão filtrar `votos_munzona` e `despesas_contratadas`? `despesas_pagas` não tem cargo nem `SQ_CANDIDATO`.

---

**User**

para o código ler csv qual biblioteca eu preciso instalar?

---

**Cursor**

Subetapa 5.2 — papel: tutora. Para ler um CSV no R, o pacote depende da função.

O `importar_tse.R` usa `fread`, do pacote `data.table`. Esse pacote já está instalado no R 4.5.1 desta máquina. A sintaxe, com um arquivo fictício, é:

```r
install.packages("data.table")
library(data.table)
fread("arquivo_ficticio.csv", sep = ";", encoding = "Latin-1")
```

A instalação só precisa rodar se o R responder que o pacote `data.table` não existe. A função `read.csv`, do próprio R, lê CSV sem instalar nada:

```r
read.csv("arquivo_ficticio.csv", sep = ";")
```

Você está tentando rodar o `importar_tse.R`, ou está escrevendo um `read.csv` novo? Se apareceu erro, cole a mensagem inteira.

---

**User**

o que eu errei no código, porque não está adicionando a base que eu criei

---

**Cursor**

Subetapa 5.3 — papel: tutora. Vou ler o script que você salvou e a mensagem do R, sem reescrever o recorte.

Subetapa 5.3 — papel: tutora. O arquivo novo que está na pasta não entra no objeto do R, porque nenhum dos dois scripts salvos lê esse arquivo.

Às 14:29 apareceram na pasta `consulta_cand_2022_BRASIL.csv` e `consulta_cand_2022_BR.csv`. O `importar_tse.R` não abre esses CSVs soltos. Ele abre o zip e lê o arquivo que está dentro dele. Rodar esse script de novo recria `candidatos` a partir do zip e ignora o CSV que você extraiu.

O `dados.R` também não lê esses CSVs. A linha 1 chama `readRDS`, que espera um arquivo `.rds`, e a aspa fica aberta. O `parse` para antes de criar `base`.

O `consulta_cand_2022_BR.csv` tem 30 linhas, só presidente e vice-presidente. Essas linhas já estão dentro do `consulta_cand_2022_BRASIL.csv`. Acrescentar o `_BR` no `_BRASIL` não traz deputado federal.

Para um CSV que já está solto na pasta, a leitura usa uma destas duas funções, com arquivo fictício:

```r
library(data.table)
tabela <- fread("arquivo_ficticio.csv", sep = ";", encoding = "Latin-1")
```

```r
tabela <- read.csv("arquivo_ficticio.csv", sep = ";")
```

Sem o `<-`, o R mostra a tabela e não guarda nada no Environment.

Cole aqui as linhas que você rodou e a mensagem do console. Qual objeto deveria ter crescido: `candidatos` ou um objeto novo com o filtro?

---

**User**

onde eu consigo ver o enviro ment para ver se funcionou

---

**Cursor**

Subetapa 3.2 — papel: tutora. Vou confirmar o nome exato do painel na extensão de R do seu VS Code, para não indicar um menu que não existe.

Subetapa 3.2 — papel: tutora. No VS Code o painel equivalente ao Environment do RStudio se chama **Workspace**.

1. Na barra da esquerda, clique no ícone **R** (o logo do R). Ele só aparece depois que uma sessão de R está ativa.
2. Abaixo de **Interactive Sessions**, abra **Workspace**. Os objetos da sessão ficam nessa lista: `candidatos`, `votos_munzona`, `despesas_contratadas`, `despesas_pagas`.
3. Se o ícone R não aparecer, `Ctrl+Shift+P`, escreva `R: Preview Environment` e abra esse comando.

A lista só mostra o que foi criado no terminal interativo do R. Se o script rodou como tarefa e o terminal já fechou, o Workspace fica vazio mesmo com as quatro mensagens de linhas tendo aparecido.

No terminal do R, este comando também lista os objetos, com um nome fictício:

```r
ls()
```

O ícone R está visível na barra esquerda, e o nome `candidatos` aparece dentro de Workspace?

---

**User**

eu posso apagar agora o código que voce gerou?

---

**Cursor**

Subetapa 3.2 — papel: tutora. Pode apagar o `importar_tse.R`. Os zips do TSE continuam na pasta, e apagar esse arquivo não apaga `candidatos` se ele ainda estiver no Workspace.

O script não grava a base em disco. Ele só lê o zip na sessão que está aberta. Se você fechar o R depois de apagar o arquivo, `candidatos`, `votos_munzona`, `despesas_contratadas` e `despesas_pagas` somem, e a próxima sessão precisa de um código seu que leia os zips de novo.

O `dados.R` e os dois CSV soltos, `consulta_cand_2022_BRASIL.csv` e `consulta_cand_2022_BR.csv`, não foram gerados por aquele script.

Os quatro objetos ainda estão no Workspace? Você já tem outra linha, escrita por você, que lê o zip?

---

**User**

o que eu estou errando veja o código e me indique

---

**Cursor**

Subetapa 5.3 — papel: tutora. Vou ler o script salvo na pasta e apontar onde a leitura quebra, sem reescrever o recorte.

O `dados.R` agora tem uma linha só. Vou rodar essa linha para ver a mensagem do R, sem alterar o arquivo.

Subetapa 5.3 — papel: tutora. A linha do `dados.R` está sintaticamente certa. Rodei ela com o diretório de trabalho na pasta do projeto e o R criou `Base_Candidatos` com 29.322 linhas e 51 colunas.

```1:1:dados.R
Base_Candidatos <- read.csv(file = "consulta_cand_2022_BRASIL.csv", sep = ";")
```

O objeto que essa linha cria se chama `Base_Candidatos`. No Workspace ele não aparece com o nome `candidatos`. Salvar o arquivo também não coloca a tabela na sessão: a linha precisa ser enviada ao terminal do R, com o cursor nela e `Ctrl+Enter`.

O `read.csv` procura o CSV na pasta que o terminal está usando, não na pasta do arquivo `.R`. Se o terminal estiver em outra pasta, o R responde que não conseguiu abrir o arquivo e `Base_Candidatos` não surge.

No terminal do R, rode estas duas linhas e me diga o que cada uma devolve:

```r
getwd()
ls()
```

`getwd()` precisa ser a pasta `Econometria_Projeto`. `ls()` precisa listar `Base_Candidatos`. Se aparecer uma mensagem em vermelho, cole ela inteira.

---

**User**

confira se a base recortada que eu fiz com apto e DF está correta

---

**Cursor**

Subetapa 6.1 — papel: mentora. Vou conferir o recorte que você salvou com o que você descreveu: apto e deputado federal. Não vou reescrever o filtro.

Subetapa 6.1 — papel: mentora. O recorte de apto e deputado federal não chegou a ser criado. O R para na linha 3 com a mensagem `objeto 'candidato' não encontrado`, então `Base_Recortada_DF` não entra no Workspace.

```3:3:dados.R
Base_Recortada_DF <- subset("Base_Candidatos",candidato == 6 )
```

Essa linha procura uma coluna chamada `candidato`. Em `Base_Candidatos` essa coluna não existe. O código do cargo está em `CD_CARGO`, que é um número inteiro, e o texto do cargo está em `DS_CARGO`. A situação da candidatura está em `DS_SITUACAO_CANDIDATURA`, com os valores `APTO` e `INAPTO`. A condição de apto não aparece na linha.

O primeiro argumento de `subset` também está entre aspas. Assim o R recebe o texto `"Base_Candidatos"`, não a tabela. Com dados fictícios, a tabela vai sem aspas:

```r
subset(tabela_ficticia, codigo == 4)
```

Reescreva a linha 3 com a coluna de cargo e a coluna de situação. Depois me diga quantas linhas `Base_Recortada_DF` ficou e se alguma linha restante está `INAPTO` ou com cargo diferente de deputado federal.

---

**User**

leia novamente

---

**Cursor**

Subetapa 6.1 — papel: mentora. Vou ler de novo o `dados.R` que está salvo e conferir o recorte com apto e deputado federal.

Subetapa 6.1 — papel: mentora. Reli o `dados.R` e rodei a linha 3. O recorte faz o que você descreveu.

```3:3:dados.R
Base_Recortada_DF <- subset(Base_Candidatos, CD_CARGO == "6" & DS_SITUACAO_CANDIDATURA == "APTO")
```

`Base_Recortada_DF` ficou com 9.476 linhas. Todas têm `CD_CARGO` igual a 6, `DS_CARGO` igual a `DEPUTADO FEDERAL` e `DS_SITUACAO_CANDIDATURA` igual a `APTO`. Nenhum apto a deputado federal ficou de fora. Cada `SQ_CANDIDATO` aparece uma vez, o turno é 1 em todas as linhas e não há UF vazia.

`CD_CARGO` está guardado como número inteiro e a comparação usa o texto `"6"`. Nesta execução o R aceitou a comparação e o resultado fechou com o cargo 6.

Essa tabela é só de candidatos. Votos e despesa ainda não entraram nela.

1. Candidatura `APTO` é o critério que vocês querem manter, mesmo para quem não foi eleito?
2. O próximo recorte é em `votos_munzona` e nas despesas, usando esses 9.476 `SQ_CANDIDATO`?

---

**User**

exato, esse do apto eu gostaria de deixar, pois são os candidatos que realmente estão concorrendo

---

**Cursor**

Subetapa 6.1 — papel: mentora. O critério que você acabou de justificar é o que a linha 3 já faz: ficam os 9.476 registros com `DS_SITUACAO_CANDIDATURA` igual a `APTO` e cargo de deputado federal.

`APTO` é a situação da candidatura nesse arquivo. Ser apto é diferente de ter sido eleito. O resultado da eleição está em outra coluna, `DS_SIT_TOT_TURNO`. Com dados fictícios, a contagem é:

```r
table(base_ficticia$resultado)
```

1. No seu recorte, quais valores aparecem em `DS_SIT_TOT_TURNO`, e quem não foi eleito continua na base?
2. Um candidato `INAPTO` pode ter despesa declarada ou voto no arquivo de votação. Vocês querem que essa pessoa saia também dessas duas bases, ou só da tabela de candidatos?

---

**User**

olhe esse erro, porque não está indo > table(Base_Recortada_DF_APTO$DS_SIT_TOT_TURNO)
Error: object 'Base_Recortada_DF_APTO' not found
> table(Base_Recortada_DF_APTO$DS_SIT_TOT_TURNO)
Error: object 'Base_Recortada_DF_APTO' not found
>

---

**Cursor**

Subetapa 5.3 — papel: tutora. Vou olhar o nome do objeto no `dados.R` e comparar com o nome que o R não encontrou.

Subetapa 5.3 — papel: tutora. O R não achou `Base_Recortada_DF_APTO` porque esse objeto ainda não existe na sessão em que você digitou o `table`.

No `dados.R` o nome está igual ao da linha que você rodou. A linha 3 usa o objeto que a linha 2 cria. Quando o arquivo inteiro é executado, com a pasta do projeto como diretório de trabalho, essa sequência não devolve o erro `object not found`. O `table` sozinho, no console, procura o objeto só na sessão aberta. Editar e salvar o arquivo não cria o objeto.

Rode primeiro, nesse mesmo terminal, as duas linhas de cima. Com dados fictícios, a ordem é esta:

```r
tabela <- subset(dados_ficticios, grupo == "A")
table(tabela$resultado)
```

A segunda linha falha se a primeira não rodou nessa sessão.

No terminal, `Ctrl+Enter` na linha 2 e depois na linha 3. Se o erro continuar, rode `ls()` e cole o que aparecer.

---

**User**

esse foi o resultadoELEITO POR M\xc9DIA       ELEITO POR QP            SUPLENTE       N\xc3O ELEITO 
                178                 334                4243                4721

---

**Cursor**

Subetapa 6.1 — papel: mentora. A tabela cobre o recorte inteiro: 178 + 334 + 4.243 + 4.721 = 9.476.

Os quatro grupos que ficaram entre os aptos a deputado federal são estes:

| `DS_SIT_TOT_TURNO` | Linhas |
| --- | ---: |
| Eleito por média | 178 |
| Eleito por QP | 334 |
| Suplente | 4.243 |
| Não eleito | 4.721 |

Quem não foi eleito está dentro da base. Suplente é o maior grupo depois de não eleito.

1. Pela justificativa de que apto significa quem concorreu, esses quatro grupos permanecem?
2. A pergunta de vocês mede quantidade de votos. O resultado da eleição entra só como descrição da amostra, ou vocês pretendem usar `DS_SIT_TOT_TURNO` como variável?

---

**User**

o que voce reomendaria para essa segunda pergunta, confesso que não sei muito bem

---

**Cursor**

Subetapa 4.1 — papel: tutora. A variável dependente e a de interesse ficam com vocês; eu não fecho essa escolha.

A pergunta que vocês já escreveram diz que o gasto muda a quantidade de votos. `DS_SIT_TOT_TURNO` é outra informação: depois da apuração, o TSE classifica o candidato em eleito por média, eleito por QP, suplente ou não eleito. A tabela que você rodou descreve os 9.476 aptos. Ela ainda não é uma variável do modelo.

1. Na frase da pergunta, o que o gasto deveria alterar: o número de votos ou o fato de a pessoa ter sido eleita, suplente ou não eleita?
2. Se `DS_SIT_TOT_TURNO` entrasse na regressão no lugar da quantidade de votos, a pergunta do trabalho continuaria a mesma?
3. O que vocês perderiam se essa coluna ficasse só na descrição da amostra e não entrasse na fórmula?

---

**User**

deveria ser o número de votos mesmo em minha opinião. Eu acho que essa coluna responderia a questão sobre o quanto deveria ser gasto para garantir a eleição, e não se a quantidade de votos é aumentada pelos gastos

---

**Cursor**

Subetapa 4.1 — papel: mentora. A escolha que você acabou de escrever combina com a pergunta do trabalho: o gasto entra ligado à quantidade de votos, e `DS_SIT_TOT_TURNO` fica fora dessa relação.

A segunda frase separa duas coisas. A coluna registra em qual classe o candidato terminou: eleito por média, eleito por QP, suplente ou não eleito. Uma análise com essa coluna no lugar dos votos diria se o gasto se associa a essa classe. A expressão “quanto deveria ser gasto para garantir a eleição” pede um valor que assegure a vitória. São formulações diferentes.

1. Qual das duas frases você quis atribuir à coluna: a associação com a classe final, ou o valor de gasto que garantiria a eleição?
2. Na base de votos, qual coluna é a quantidade de votos da pergunta, e cada linha dessa coluna é um candidato ou um candidato em um município e zona?

---

**User**

então, essa não é apenas a base de dados que quero utilizar, temos mais no arquivo que mostram e indicam os votos em cada candidato e os gastos, eu gostaria agora de saber como posso organizar essas outras tabelas com essa aqui

---

**Cursor**

Subetapa 5.2 — papel: tutora. Vou reler o `dados.R` para ver quais tabelas já estão na sessão antes de falar em juntá-las.

Subetapa 5.2 — papel: tutora. O `dados.R` só lê a tabela de candidatos. Votos e gastos ainda não estão nessa sessão, então ainda não há o que juntar com `Base_Recortada_DF_APTO`.

`Base_Recortada_DF_APTO` tem uma linha por candidato, identificada por `SQ_CANDIDATO`. A votação por município e zona tem várias linhas para o mesmo candidato. A despesa contratada também: uma linha por documento, com `SQ_CANDIDATO`. A despesa paga não traz `SQ_CANDIDATO`.

Para a regressão ficar com uma linha por candidato, o caminho é somar as linhas repetidas e depois juntar pela identificação comum. Com dados fictícios:

```r
totais <- aggregate(valor ~ id, data = lancamentos, FUN = sum)
juntada <- merge(pessoas, totais, by = "id")
```

`pessoas` é a tabela de uma linha por pessoa. `lancamentos` é a tabela com várias linhas por pessoa. Quem não aparece em `lancamentos` fica de fora desse `merge`.

1. A linha da regressão é um candidato? Se for, quais colunas de voto e de gasto entram na soma?
2. Um deputado apto sem nenhuma linha de despesa sai da base ou permanece com gasto zero?
3. A despesa que vocês vão somar é a contratada, que tem `SQ_CANDIDATO`, ou a paga, que não tem?

---

**User**

vai ser a contatada para deixar mais fácil, voce acha uma boa e é coerente

---

**Cursor**

Subetapa 4.1 — papel: tutora. A medida de gasto continua com vocês. Eu não fecho se a despesa contratada é uma boa escolha.

O que já está claro é a parte prática: `despesas_contratadas` tem `SQ_CANDIDATO` e `VR_DESPESA_CONTRATADA`, então dá para somar os documentos de cada candidato e juntar com `Base_Recortada_DF_APTO`. “Deixar mais fácil” justifica o arquivo, não o conceito. A pergunta de vocês fala em gasto de campanha, e antes vocês tinham definido isso como a despesa total declarada.

1. No `leiame_despesas-contratadas-candidatos.pdf`, `VR_DESPESA_CONTRATADA` é a despesa total declarada ou o valor contratado, que pode ser diferente do valor pago?
2. Escrevam uma frase em que a despesa contratada é o gasto que deveria mudar os votos. O que essa frase diz que a despesa paga não diria?
3. Se um deputado tem dois contratos, a soma dos dois `VR_DESPESA_CONTRATADA` é o gasto dele na regressão?

---

**User**

realmente estou pemsando agora que o valor pho faz mais sentido

---

**Cursor**

Subetapa 4.1 — papel: tutora. Você está inclinando o gasto para o valor pago. Essa escolha continua com vocês.

No arquivo de despesas pagas, o valor está em `VR_PAGTO_DESPESA`. Esse arquivo não traz `SQ_CANDIDATO`. Ele traz `SQ_DESPESA`. O arquivo de despesas contratadas traz os dois: `SQ_DESPESA` e `SQ_CANDIDATO`.

1. Qual é a frase: o valor pago é o dinheiro que saiu da campanha, e é esse dinheiro que deveria mudar os votos?
2. O pagamento se liga ao deputado por qual coluna?
3. Se um contrato tem dois pagamentos, o gasto do candidato é a soma dos `VR_PAGTO_DESPESA`?

---

**User**

eu acho que é exatamente isso e´o dinheiro realmente utilizado na campanha que deve contar, e não todo o dinheiro arrecadado

---

**Cursor**

Subetapa 4.1 — papel: mentora. A frase que você escreveu tira a receita da medida de gasto: o que entra é o dinheiro usado na campanha, não o dinheiro arrecadado.

Receita e gasto estão em arquivos diferentes. `VR_DESPESA_CONTRATADA` e `VR_PAGTO_DESPESA` são os dois gastos. A frase ainda não diz qual deles é o dinheiro utilizado.

1. Um contrato assinado e ainda não pago conta como dinheiro utilizado na campanha?
2. Se não conta, o gasto do deputado é a soma de `VR_PAGTO_DESPESA`. Qual coluna liga cada pagamento ao `SQ_CANDIDATO` da `Base_Recortada_DF_APTO`?

---

**User**

eu dei uma boa pesquisada e vamos usar as despesas arrecadadas mesmo que ja vem com o nome de cada um, relamente ela mostra o todo que procuramos

---

**Cursor**

Subetapa 4.1 — papel: mentora. Você fechou uma medida e a frase mudou em relação à anterior. Vou olhar o nome dos arquivos no zip para a pergunta apontar o arquivo certo, sem escolher a coluna por vocês.

Subetapa 4.1 — papel: mentora. No zip não há arquivo chamado despesa arrecadada. Há dois arquivos com o nome do candidato, e cada um mede uma coisa.

`receitas_candidatos` traz `NM_CANDIDATO`, `SQ_CANDIDATO` e `VR_RECEITA`. Esse valor é receita, o dinheiro arrecadado. `despesas_contratadas` traz `NM_CANDIDATO`, `SQ_CANDIDATO` e `VR_DESPESA_CONTRATADA`. A frase anterior dizia que o que conta é o dinheiro utilizado, não o arrecadado. “Despesas arrecadadas” junta as duas.

Os dois arquivos também têm um identificador de lançamento, `SQ_RECEITA` ou `SQ_DESPESA`. Isso indica mais de uma linha por candidato.

1. Qual arquivo você abriu na pesquisa: `receitas_candidatos` ou `despesas_contratadas`?
2. Qual coluna de valor você viu: `VR_RECEITA` ou `VR_DESPESA_CONTRATADA`?
3. Nesse arquivo, o mesmo `NM_CANDIDATO` aparece uma vez ou várias?

---

**User**

despesas ontratadas mesmo, acabei errando o nome

---

**Cursor**

Subetapa 4.1 — papel: mentora. O arquivo que você quis dizer é `despesas_contratadas`. Ele traz `NM_CANDIDATO`, `SQ_CANDIDATO` e o valor em `VR_DESPESA_CONTRATADA`. Receita, `VR_RECEITA`, fica de fora dessa escolha.

Cada candidato tem vários documentos nesse arquivo. O gasto na regressão, se for o total contratado, é a soma de `VR_DESPESA_CONTRATADA` por `SQ_CANDIDATO`, e só depois essa soma se junta à `Base_Recortada_DF_APTO`. Com dados fictícios:

```r
totais <- aggregate(valor ~ id, data = lancamentos, FUN = sum)
```

Escreva essa soma com as colunas de vocês e diga quantas linhas o resultado tem. Os aptos a deputado federal são 9.476. O número da soma pode ser menor, se algum apto não tiver despesa contratada.

---

**User**

com isso definido, vamos voltar aquela tarefa de agregar tudo, como eu devo fazer?

---

**Cursor**

Subetapa 5.2 — papel: tutora. Vou ver o que o `dados.R` já lê e quais arquivos grandes estão soltos na pasta, para a ordem da agregação começar do que você realmente tem.

Subetapa 5.2 — papel: tutora. A ordem é ler as duas bases, ficar só com os candidatos da `Base_Recortada_DF_APTO`, somar e depois juntar. Eu não escrevo essas linhas com as colunas de vocês.

O `dados.R` só tem candidatos. Votos e despesas contratadas ainda estão dentro dos zips, nos arquivos `votacao_candidato_munzona_2022_BRASIL.csv` e `despesas_contratadas_candidatos_2022_BRASIL.csv`. A função `ler_csv_do_zip`, no `importar_tse.R`, já lê um CSV de dentro do zip e transforma coluna `VR_` em número. Rodar o `importar_tse.R` inteiro também lê despesa paga e relê os candidatos. Chamem só as duas leituras de que precisam. O arquivo de votos descompactado passa de 4 GB.

Depois, em dados fictícios, a sequência é esta:

```r
lancamentos <- lancamentos[lancamentos$id %in% pessoas$id, ]
totais <- aggregate(valor ~ id, data = lancamentos, FUN = sum)
juntada <- merge(pessoas, totais, by = "id")
```

`pessoas` é a `Base_Recortada_DF_APTO`, uma linha por candidato. `lancamentos` é a votação ou a despesa contratada, várias linhas por candidato. O `id` comum é `SQ_CANDIDATO`. Quem não aparece em `lancamentos` sai no `merge`.

Na votação existem `QT_VOTOS_NOMINAIS` e `QT_VOTOS_NOMINAIS_VALIDOS`. Na despesa, o valor que vocês escolheram é `VR_DESPESA_CONTRATADA`.

1. Qual das duas colunas de voto entra na soma?
2. Deputado apto sem nenhuma despesa contratada sai da base ou fica com gasto zero?
3. Escrevam a soma da despesa e me digam quantas linhas ela tem, ao lado das 9.476 da `Base_Recortada_DF_APTO`.

---

**User**

eu dei o unzip em outros arquivos, confira se está correto e como eu faço para juntar as informações deles em minha base atual

---

**Cursor**

Subetapa 5.3 — papel: tutora. Vou ver quais arquivos você descompactou e se eles batem com a base de candidatos que já está no `dados.R`.

Subetapa 5.3 — papel: tutora. Os dois arquivos que você descompactou estão corretos e completos.

`despesas_contratadas_candidatos_2022_BRASIL.csv` tem o mesmo tamanho do arquivo dentro do zip, 53 colunas, e contém `SQ_CANDIDATO`, `CD_CARGO` e `VR_DESPESA_CONTRATADA`. `votacao_candidato_munzona_2022_BRASIL.csv` também bate com o zip, 50 colunas, e contém `SQ_CANDIDATO`, `NR_TURNO`, `QT_VOTOS_NOMINAIS` e `QT_VOTOS_NOMINAIS_VALIDOS`. São os arquivos nacionais. Não há, junto deles, os CSVs por estado, então essa extração não duplica linha.

O `dados.R` ainda não lê esses dois. Para um CSV desse tamanho, `read.csv` costuma ser lento demais. A função adequada é `fread`, com arquivo fictício:

```r
library(data.table)
grande <- fread("arquivo_grande.csv", sep = ";", encoding = "Latin-1")
```

Antes de somar, confira se a coluna de valor chegou como número. Vírgula decimal deixa a coluna como texto, e `sum` não soma dinheiro. Com dados fictícios:

```r
class(lancamentos$valor)
```

A junção com a `Base_Recortada_DF_APTO` segue esta ordem. `pessoas` é uma linha por candidato. `lancamentos` tem várias.

```r
lancamentos <- lancamentos[lancamentos$id %in% pessoas$id, ]
totais <- aggregate(valor ~ id, data = lancamentos, FUN = sum)
juntada <- merge(pessoas, totais, by = "id")
```

O `id` nas três tabelas é `SQ_CANDIDATO`. Faça uma soma para a despesa e outra para o voto, e dê dois `merge`. Quem não aparece em `lancamentos` sai da `juntada`.

1. A soma dos votos usa `QT_VOTOS_NOMINAIS` ou `QT_VOTOS_NOMINAIS_VALIDOS`?
2. Deputado apto sem despesa contratada sai da base ou fica com gasto zero?
3. Depois da primeira soma, quantas linhas ela tem, comparadas às 9.476 da `Base_Recortada_DF_APTO`?

---

**User**

veja se até agora eu fiz certo?

---

**Cursor**

Subetapa 5.3 — papel: tutora. Vou ler o `dados.R` salvo e conferir se ele faz o recorte, a soma e a junção que você descreveu.

Subetapa 5.3 — papel: tutora. Até a linha 7, o que está no `dados.R` combina com o que você já definiu. A linha 8 aponta para um arquivo que não está na pasta.

```8:8:dados.R
Votos_Munzona <- fread("votação_candidato_munzona_2022_BRASIL.csv", sep = ";", encoding = "Latin-1")
```

O `parse` passa. `Base_Recortada_DF_APTO` continua sendo cargo `6` e situação `APTO`. O `fread` da despesa usa `despesas_contratadas_candidatos_2022_BRASIL.csv`, e esse arquivo existe. O `fread` dos votos procura `votação`, com acento. Na pasta o arquivo é `votacao_candidato_munzona_2022_BRASIL.csv`, sem acento. `file.exists` deu falso para o nome com acento e verdadeiro para o nome sem acento. Do jeito que a linha 8 está, `Votos_Munzona` não é criado.

Soma, filtro pelos 9.476 candidatos e `merge` ainda não estão no script. Isso é o passo seguinte, não um erro do que já foi escrito.

1. Depois de trocar o nome do arquivo de votos, as duas leituras terminam? Quantas linhas têm `Despesas_Contratadas` e `Votos_Munzona`?
2. A soma dos votos vai usar `QT_VOTOS_NOMINAIS` ou `QT_VOTOS_NOMINAIS_VALIDOS`?

---

**User**

vai usar válidos achei que faziam mais sentido, o que acha?

---

**Cursor**

Subetapa 4.1 — papel: tutora. A coluna de votos é escolha de vocês. Vou só ver, no arquivo, em que situações `QT_VOTOS_NOMINAIS` e `QT_VOTOS_NOMINAIS_VALIDOS` diferem, para a pergunta não inventar essa diferença.

Subetapa 4.1 — papel: tutora. Usar votos válidos pode combinar com a pergunta, e a escolha continua com vocês.

A pergunta fala em quantidade de votos recebidos. `QT_VOTOS_NOMINAIS_VALIDOS` é a coluna de votos nominais válidos. `QT_VOTOS_NOMINAIS` é a de votos nominais, sem esse recorte. No Acre, nas linhas de deputado federal, as duas colunas vieram iguais em todas as 2.944 linhas. Nesse estado, a soma não muda. A definição do que a palavra “válidos” tira fora está no leiame da votação. Essa leitura é de vocês.

1. No leiame, o que sai de `QT_VOTOS_NOMINAIS` para chegar em `QT_VOTOS_NOMINAIS_VALIDOS`?
2. Esses votos que saem foram recebidos pelo candidato na pergunta de vocês, ou não entram na conta?

---

**User**

<timestamp>Monday, Nov 23, 2026, 4:25 PM (UTC-3)</timestamp>
<system_notification>
The following task has finished. If you were already aware, ignore this notification and do not restate prior responses.

<task>
kind: shell
status: success
task_id: 878627
title: Count rows where valid and nominal votes differ
tool_call_id: call-5c47258e-4b80-4e23-9f7b-85e409f9844b-94
fc_4dc2d6d1-9123-9704-931f-5b92ed00b125_0
output_path: C:\Users\pedro\.cursor\projects\c-Users-pedro-OneDrive-rea-de-Trabalho-Econometria-Projeto\terminals\878627.txt
</task>
</system_notification>
<user_query>Briefly inform the user about the task result and perform any follow-up actions (if needed). If there's no follow-ups needed, don't explicitly say that.</user_query>

---

**Cursor**

Subetapa 4.1 — papel: tutora. No arquivo nacional, as linhas de deputado federal são 3.756.403. Em 3.725.276, `QT_VOTOS_NOMINAIS` e `QT_VOTOS_NOMINAIS_VALIDOS` são iguais. Nas outras 31.127, não são.

A diferença aparece com o rótulo `Anulado` (29.263 linhas), `Anulado sub judice` (743) e `Válido (legenda)` (1.121). Nos exemplos de `Anulado`, o voto nominal é positivo e o válido é zero.

Voto anulado entra na quantidade de votos recebidos da pergunta de vocês?

---

**User**

minha dúvida é se esse jeito que estamos fazendo pode ser feito ou se ela pode acusar de uso inadequado de ia

---

**Cursor**

Subetapa 5.2 — papel: tutora. O jeito desta conversa está dentro do que a orientação aceita, desde que as decisões e as linhas do recorte, da soma e da regressão continuem sendo de vocês.

O que a professora marca como adequado é exatamente o que temos feito na maior parte do tempo. Vocês escolhem a pergunta, a amostra e a medida. Eu pergunto, comento o que vocês já escreveram e, no erro, explico a mensagem. O `importar_tse.R` também está previsto: código completo só para baixar e importar, e vocês conferem o resultado. O `dados.R` de agora foi escrito por vocês. Eu apontei o acento no nome do arquivo e não reescrevi a linha.

O uso inadequado seria eu escolher o modelo, escrever a regressão com as variáveis de vocês, interpretar coeficiente ou redigir a análise para entregar. Isso não foi feito.

Há um trecho mais delicado. Eu abri os CSVs e contei coisas que a orientação reserva a vocês: o código do cargo, as 9.476 linhas do recorte e as 31.127 linhas em que voto nominal e voto válido diferem. Conferir se o filtro de vocês fez o que vocês disseram é comentário de código. A comparação nacional das duas colunas de voto já é leitura da base. No relatório, descrevam isso no parágrafo de uso de IA. A conversa inteira vai no link público.

O risco não é ter perguntado. É não conseguir explicar, com as próprias palavras, por que ficaram os aptos, por que a despesa é a contratada e por que o voto é o válido. Vocês conseguem explicar essas três escolhas sem olhar esta conversa?

---

**User**

conseguimos explicar, e vamos colocar no relatório posteriormente, mas para anaálise, eu pesquisei é mlehor usarnos os nominais e não os validados, pois realmente o que importa e a quantidade total de votos, ou seja o máximo que eles arreadaram de votos, se foi anulado posteriormente não interessa para nós

---

**Cursor**

Subetapa 4.1 — papel: mentora. A medida que vocês acabaram de definir é `QT_VOTOS_NOMINAIS`: a quantidade de votos nominais, incluindo os que depois aparecem como anulados.

Essa frase combina com os exemplos de `Anulado` que vimos no arquivo nacional. Neles, `QT_VOTOS_NOMINAIS` ficava positivo e `QT_VOTOS_NOMINAIS_VALIDOS` ficava zero. A anulação posterior sai da conta, como vocês escreveram.

Falta uma etiqueta em que as duas colunas também diferem: `Válido (legenda)`, em 1.121 linhas. Não cheguei a ver se, nessas linhas, o nominal é maior ou menor que o válido.

1. Voto destinado à legenda é voto que o candidato arrecadou, e por isso entra em `QT_VOTOS_NOMINAIS`?
2. A soma da regressão fica `QT_VOTOS_NOMINAIS` por `SQ_CANDIDATO`?

---

**User**

eu alterei o código com as alterações que voce recomendou para fazermos o merge da base final, veja o que voce acha e se está correto

---

**Cursor**

Subetapa 5.3 — papel: tutora. Vou ler o `dados.R` que você alterou e conferir se o merge faz a base que vocês descreveram, sem reescrever o script.

Subetapa 5.3 — papel: tutora. A lógica das linhas 15 a 25 segue o que vocês definiram. A leitura dos votos, do jeito que está na linha 8, não completou neste computador.

O recorte continua cargo `6` e `APTO`. A soma dos votos usa `QT_VOTOS_NOMINAIS`. A soma da despesa usa `VR_DESPESA_CONTRATADA`. O filtro e os dois `merge` usam `SQ_CANDIDATO`. Numa amostra, `as.character` manteve o identificador com todos os dígitos, e `VR_DESPESA_CONTRATADA` chegou como número. No Acre, cada combinação de candidato, município, zona e turno aparece uma vez, então a soma junta lugares. Não repete o mesmo lugar.

O `fread` do arquivo de votos, de 4 GB, parou com esta mensagem: o arquivo abriu, mas não foi possível mapeá-lo na memória. Com essa parada, `Votos_Munzona` não existe e as linhas 19 a 21 não rodam. Pedir só algumas colunas no `fread` não evitou o erro, porque ele ainda tenta mapear o arquivo inteiro. Uma função que leu as primeiras linhas escolhendo colunas foi `vroom`:

```r
library(vroom)
pequena <- vroom("arquivo_grande.csv", delim = ";", col_select = c(id, valor))
```

Os `merge` das linhas 21 e 25 ficam só com quem aparece nas duas tabelas. Deputado apto sem voto ou sem despesa contratada sai de `Base_Final`.

1. No seu console, a linha 8 terminou ou apareceu a mensagem de memória?
2. `nrow(Base_Final)` ficou igual a 9.476? Se ficou menor, a diferença é gente sem voto, sem despesa, ou os dois?

---

**User**

<timestamp>Monday, Nov 23, 2026, 4:42 PM (UTC-3)</timestamp>
<system_notification>
The following task has finished. If you were already aware, ignore this notification and do not restate prior responses.

<task>
kind: shell
status: success
task_id: 267691
title: Test a column-only read of the vote file
tool_call_id: call-cf0a846f-8150-4f6a-9ca9-d047683ab123-100
fc_5c53bfe5-e2c4-909d-ac35-ee4c282d9dda_0
output_path: C:\Users\pedro\.cursor\projects\c-Users-pedro-OneDrive-rea-de-Trabalho-Econometria-Projeto\terminals\267691.txt
</task>
</system_notification>
<user_query>Briefly inform the user about the task result and perform any follow-up actions (if needed). If there's no follow-ups needed, don't explicitly say that.</user_query>

---

**Cursor**

Subetapa 5.3 — papel: tutora. O teste da leitura por colunas terminou: as cinco primeiras linhas do arquivo de votos abriram, com `SQ_CANDIDATO` e `QT_VOTOS_NOMINAIS` numéricos. Isso não substitui a leitura do arquivo inteiro na linha 8. Se essa linha ainda mostrar o erro de memória, `Votos_Munzona` não foi criado.

---

**User**

eu rodei tudo novamente, veja se o problema pesrsiste

---

**Cursor**

Subetapa 5.3 — papel: tutora. Vou reler o `dados.R` e tentar de novo a leitura dos votos, para ver se o erro de memória ainda aparece.

Subetapa 5.3 — papel: tutora. O problema de memória continua. O `dados.R` está igual, e a linha 8 ainda pede o arquivo de votos inteiro, de 4 GB.

O computador tem 7,7 GB de memória. Agora há menos de 1 GB livre. A sessão de R que começou às 16:56 já está com cerca de 5,7 GB comprometidos. Com a sessão nesse tamanho, o `fread` não consegue reservar um bloco contínuo para mapear o arquivo de votos. É a mesma falha de antes: o arquivo abre, mas não entra na memória, e `Votos_Munzona` não é criado.

Não rodei a leitura de novo daqui, para não disputar a memória com a sessão que você acabou de abrir.

Um caminho é ler só as duas colunas que a soma usa e apagar a tabela grande antes de abrir a próxima. Com dados fictícios:

```r
pedaco <- fread("arquivo_grande.csv", sep = ";", encoding = "Latin-1", select = c("id", "valor"))
totais <- aggregate(valor ~ id, data = pedaco, FUN = sum)
rm(pedaco)
```

No teste anterior, o `select` do `fread` ainda tentou mapear o arquivo inteiro. Se a mesma mensagem aparecer, a leitura tem de ser feita com uma função que não mapeia o arquivo, como o `vroom` do exemplo passado.

O console mostrou de novo a mensagem de memória, ou a sessão ainda está rodando sem devolver o `nrow`?

---

**User**

essa mensagem que voce está falando não aparece em meu terminal, onde ela está?

---

**Cursor**

Subetapa 5.3 — papel: tutora. Essa mensagem não está no seu terminal. Ela apareceu numa leitura que eu fiz daqui, num R separado, quando o `fread` tentou abrir o arquivo de votos de 4 GB.

O seu console só mostra o que a sua sessão rodou. Se essa frase não está aí, o seu R não devolveu esse erro. Eu não consigo ver a tela do seu terminal.

Role de novo só a linha 8 e cole aqui tudo o que o console escrever depois dela. Se não escrever nada e o cursor voltar com `>`, rode em seguida:

```r
ls()
nrow(Votos_Munzona)
```

O que essas duas linhas devolverem diz se `Votos_Munzona` foi criado.

---

**User**

> Despesas_Contratadas <- fread(input = "despesas_contratadas_candidatos_2022_$
|--------------------------------------------------|
|==================================================|
> ls()
[1] "Base_Candidatos"        "Base_Final"             "Base_Recortada_DF_APTO"
[4] "Despesas_Contratadas"   "Despesas_DF"            "Despesas_Totais"       
[7] "Votos_DF"               "Votos_Munzona"          "Votos_Totais"          
> nrow(Votos_Munzona)
[1] 9377845
>

---

**Cursor**

Subetapa 5.3 — papel: tutora. Na sua sessão a leitura funcionou. `Votos_Munzona` existe e tem 9.377.845 linhas, o mesmo tamanho do arquivo nacional de votos. A mensagem de memória não apareceu aí porque ela foi de outra execução, não desta.

O `ls()` também mostra `Votos_Totais`, `Despesas_Totais` e `Base_Final`. As somas e os dois `merge` rodaram até o fim.

Falta ver se alguém saiu no caminho. Cole o resultado destas quatro linhas:

```r
nrow(Base_Recortada_DF_APTO)
nrow(Votos_Totais)
nrow(Despesas_Totais)
nrow(Base_Final)
```

`Base_Recortada_DF_APTO` tinha 9.476 linhas. Se `Base_Final` vier menor, o `merge` tirou apto sem voto ou sem despesa contratada.

---

**User**

> nrow(Votos_Munzona)
[1] 9377845
> nrow(Base_Recortada_DF_APTO)
[1] 9476
> nrow(Votos_Totais)
[1] 9476
> nrow(Despesas_Totais)
[1] 9429
> nrow(Base_Final)
[1] 9429

---

**Cursor**

Subetapa 6.1 — papel: mentora. O `merge` fez o que está escrito no script, e a base final ficou menor que o recorte de aptos.

| Objeto | Linhas |
| --- | ---: |
| `Base_Recortada_DF_APTO` | 9.476 |
| `Votos_Totais` | 9.476 |
| `Despesas_Totais` | 9.429 |
| `Base_Final` | 9.429 |

Todos os 9.476 aptos têm linha em `Votos_Totais`. Na despesa contratada há 9.429. A diferença é de 47 pessoas. O `merge` da linha 25 só guarda quem está nas duas tabelas, então esses 47 saíram de `Base_Final`. Eles têm voto e não têm despesa contratada.

Com dados fictícios, dá para manter quem está só na tabela da esquerda:

```r
merge(pessoas, totais, by = "id", all.x = TRUE)
```

Quem não está em `totais` fica com valor ausente, não com zero.

1. Esses 47 devem sair da regressão, ou permanecer com gasto zero?
2. Se permanecerem, “ausente” e “zero” são a mesma coisa na pergunta de vocês?

---

**User**

não devem sair, vou inclui-los, justamente porque eles fazem parte de nossa pesquisa e não são excluiveis

---

**Cursor**

Subetapa 6.2 — papel: mentora. A decisão que você escreveu é manter os 47 na pesquisa. Eles têm voto e não têm linha em `Despesas_Totais`.

O `merge` com `all.x = TRUE` segura essas pessoas na tabela. O gasto delas chega ausente, não como zero. Numa regressão, valor ausente na despesa faz a linha sair de novo. Incluir os 47 na estimação exige preencher esse ausente com um número.

Com dados fictícios, a ordem fica assim:

```r
juntada <- merge(pessoas, totais, by = "id", all.x = TRUE)
juntada$valor[is.na(juntada$valor)] <- 0
```

1. Ausência de despesa contratada significa gasto zero?
2. Depois de alterar a linha 25, `nrow(Base_Final)` voltou para 9.476? Quantos desses gastos ficaram iguais a zero?

---

**User**

confira como está agora, voltou para 9476

---

**Cursor**

Subetapa 6.2 — papel: mentora. Vou ler o `dados.R` atual e conferir se os 9.476 continuam na base, com os 47 de gasto ausente preenchidos.

Subetapa 6.2 — papel: mentora. O script agora mantém quem não tem despesa contratada, e o 9.476 que você obteve fecha com o recorte de aptos.

```26:27:dados.R
Base_Final <- merge(Base_Final, Despesas_Totais, by = "SQ_CANDIDATO", all.x = TRUE)
Base_Final$VR_DESPESA_CONTRATADA[is.na(Base_Final$VR_DESPESA_CONTRATADA)] <- 0
```

O `all.x = TRUE` segura os 9.476. A linha seguinte transforma o gasto ausente em zero. Na contagem anterior havia 9.429 despesas, então esses zeros devem ser 47. A linha 22 faz o mesmo com o voto. `Votos_Totais` já tinha 9.476 linhas, então essa troca de voto não deve ter atingido ninguém.

`Tabela` fica com candidato, UF, partido, votos nominais e despesa contratada. Não muda o número de linhas.

Rode e cole o resultado:

```r
sum(Base_Final$VR_DESPESA_CONTRATADA == 0)
sum(Base_Final$QT_VOTOS_NOMINAIS == 0)
```

O primeiro precisa dar 47. O segundo diz quantos aptos ficaram com voto zero.

---

**User**

deu isso aqui > sum(Base_Final$VR_DESPESA_CONTRATADA == 0)
[1] 925
> sum(Base_Final$QT_VOTOS_NOMINAIS == 0)
[1] 1
>

---

**Cursor**

Subetapa 6.2 — papel: mentora. O 925 não contradiz o 9.476. Ele conta outra coisa.

Os 47 são os aptos que não tinham linha em `Despesas_Totais`. A linha 27 transformou o gasto ausente deles em zero. O `sum(... == 0)` conta todo mundo cujo valor final é zero, inclusive quem tinha lançamento e a soma deu zero. A conta fecha assim: 925 − 47 = 878 aptos com despesa registrada que somou zero, mais os 47 preenchidos.

O voto zero é um caso só. `Votos_Totais` já tinha as 9.476 linhas, então essa pessoa tem linhas de voto e a soma deu zero. Não foi um ausente preenchido pela linha 22.

1. Rode `sum(Despesas_Totais$VR_DESPESA_CONTRATADA == 0)` e diga se o resultado é 878.
2. Candidato com lançamentos que somam zero fica na pesquisa junto com os 47, ou só os 47 tinham de entrar com zero?

---

**User**

exatamente esse número

---

**Cursor**

Subetapa 6.2 — papel: mentora. O 878 fecha a conta: 878 somas iguais a zero mais 47 ausentes preenchidos dão os 925 zeros de `Base_Final`.

São dois grupos. Os 878 têm lançamento em `Despesas_Totais` e a soma deu zero. Os 47 não tinham lançamento, e a linha 27 colocou zero no lugar do ausente.

1. Os 878 continuam na pesquisa com gasto zero, ao lado dos 47?
2. O apto com `QT_VOTOS_NOMINAIS` igual a zero também permanece?

---

**User**

continuam, pois despeza igual a 0 e sem despesa é a mesma coisa, logo não precisa diferencia-los, agora vamos falar dos controles dessa regressão, eu pensei em UF, partido, genero, cor e grau de instrução, o que acha

---

**Cursor**

Subetapa 4.2 — papel: mentora. A lista que você propôs é UF, partido, gênero, cor e grau de instrução. A justificativa de cada um ainda é sua.

Essas informações estão no arquivo de candidatos: `SG_UF`, `SG_PARTIDO`, `DS_GENERO`, `DS_COR_RACA` e `DS_GRAU_INSTRUCAO`. `Tabela` ficou só com UF e partido. As outras três continuam em `Base_Final`, se o `merge` não as descartou.

Os códigos numéricos, como `CD_GENERO`, têm uma ordem que o número inventa. A categoria entra como texto. Com dados fictícios:

```r
factor(base_ficticia$categoria)
```

1. Para cada um dos cinco, escreva uma frase: por que ele muda o gasto e também muda os votos?
2. `SG_PARTIDO` é o partido, e o arquivo também tem federação. Qual dos dois é o controle?
3. Qual característica que afeta gasto e votos ficou de fora dessa lista, e por quê?

---

**User**

eu gostaria de gerar um csv dessa nossa base final, como ele ficaria?

---

**Cursor**

Subetapa 5.2 — papel: tutora. O CSV é uma cópia da tabela que você escolher, com uma linha por candidato e as colunas separadas. A função, com dados fictícios, é esta:

```r
write.csv(tabela_ficticia, file = "saida.csv", row.names = FALSE, fileEncoding = "UTF-8")
```

`row.names = FALSE` evita uma primeira coluna com a numeração do R. O separador padrão é a vírgula. No Excel em português, a vírgula costuma ser lida melhor se o separador for ponto e vírgula:

```r
write.csv(tabela_ficticia, file = "saida.csv", row.names = FALSE, sep = ";", fileEncoding = "UTF-8")
```

Há dois objetos na sessão. `Base_Final` tem os 9.476 aptos, as colunas do arquivo de candidatos e mais `QT_VOTOS_NOMINAIS` e `VR_DESPESA_CONTRATADA`. Gênero, cor e instrução estão nesse objeto, se o `merge` as conservou. `Tabela` tem só cinco colunas: candidato, UF, partido, votos nominais e despesa contratada.

1. O arquivo deve ser a `Base_Final` ou a `Tabela`?
2. Gênero, cor e grau de instrução entram nesse CSV?

---

**User**

base Final, para fazermos tudo que queremos, é o que eu acho como correto

---

**Cursor**

Subetapa 5.2 — papel: tutora. `Base_Final` é o objeto que ainda pode carregar o que vocês listaram: os 9.476 aptos, os votos, a despesa e as características do candidato. `Tabela` ficou sem gênero, cor e instrução.

Use o `write.csv` da mensagem anterior, no objeto que você acabou de escolher, com o nome de arquivo que vocês quiserem. `row.names = FALSE` deixa a primeira coluna de fora.

Antes de gravar, confira se as três colunas continuam na base. Com dados fictícios:

```r
c("DS_GENERO", "DS_COR_RACA", "DS_GRAU_INSTRUCAO") %in% names(base_ficticia)
```

1. As três comparações deram `TRUE`?
2. Depois de gravar, quantas linhas e quantas colunas o CSV tem ao ser lido de novo?

---

**User**

pelo que eu vi o csv possui alguns erros ortografics e de posição, como eu posso corrigir isso?

---

**Cursor**

Subetapa 5.3 — papel: tutora. Vou abrir o CSV que você gravou e ver se o problema é acento, ordem das colunas ou valor na coluna errada.

Subetapa 5.3 — papel: tutora. O CSV não se corrige por dentro. O texto já saiu quebrado na leitura dos candidatos, e gravar de novo o objeto que está na memória repete o erro.

A linha 3 do `dados.R` faz `read.csv` sem dizer o acento do arquivo. O TSE está em Latin-1, e essa sessão do R lê como UTF-8. `ELEIÇÃO` vira um texto inválido. No `Base_Final.csv` não sobrou nenhum acento: são 4.477.903 bytes e zero deles passa de 127. O corte acontece no meio da palavra e leva o fechamento das aspas junto. A linha deixa de ter 53 campos. Por isso a ortografia e a posição das colunas quebram juntas. `MASCULINO` aparece certo porque não tem acento. `MARANHÃO` e `ELEIÇÃO` não.

Ler declarando a codificação, com arquivo fictício:

```r
candidatos <- read.csv("arquivo.csv", sep = ";", fileEncoding = "CP1252")
```

`CP1252` leu `ELEIÇÃO ORDINÁRIA` por completo neste computador. `fileEncoding = "Latin-1"` nesta sessão devolveu erro de conversão. Os `fread` de votos e despesa já usam `encoding = "Latin-1"`. O problema está na leitura dos candidatos.

Releiam os candidatos com a codificação, montem de novo o `Base_Final` e só então usem o `write.csv`. Confiram um nome com acento antes de gravar.

1. Depois da nova leitura, `NM_TIPO_ELEICAO` da primeira linha aparece `ELEIÇÃO ORDINÁRIA`?
2. O CSV novo, lido de volta, tem 9.476 linhas e 53 colunas?

---

**User**

eu corrigi fazendo isso que voce falou, então eu coloquei no candidatos o latin e eu certo

---

**Cursor**

Subetapa 5.3 — papel: tutora. Vou ler a linha dos candidatos e um nome com acento, para ver se o Latin-1 entrou na leitura certa.

Subetapa 5.3 — papel: tutora. O `encoding = "Latin-1"` na linha 4 está certo. O arquivo em que essa linha lê já não está.

```4:4:Trabalho_Final.R
Base_Candidatos <- fread(input = "consulta_cand_2022_BRASIL.csv", sep = ";" , encoding = "Latin-1")
```

O `Base_Final.csv` agora tem 9.476 linhas e 53 colunas, e nenhuma linha ficou com o número errado de campos. A posição das colunas foi corrigida. O acento não. `ELEIÇÃO` está gravado com o caractere de substituição no lugar de `Ç` e `Ã`. O mesmo vale para `MARANHÃO` e `MÉDICO`.

Isso já está no `consulta_cand_2022_BRASIL.csv` solto na pasta, regravado às 18:06. O `fread` só copiou esse texto. Dentro de `consulta_cand_2022.zip`, o arquivo com o mesmo nome ainda tem os bytes de `ELEIÇÃO ORDINÁRIA`.

Extraia de novo esse CSV do zip, por cima do arquivo solto, sem abrir e salvar no Excel. Com dados fictícios:

```r
unzip("arquivo.zip", files = "planilha.csv", overwrite = TRUE)
```

Rode o `Trabalho_Final.R` outra vez e olhe `NM_TIPO_ELEICAO` da primeira linha. Ele precisa aparecer `ELEIÇÃO ORDINÁRIA`, não `ELEI` seguido de um quadrado.

---

**User**

<timestamp>Monday, Nov 23, 2026, 6:33 PM (UTC-3)</timestamp>
<system_notification>
The following task has finished. If you were already aware, ignore this notification and do not restate prior responses.

<task>
kind: shell
status: success
task_id: 38510
title: Locate dados.R and the new Base_Final.csv
tool_call_id: call-b3930023-8881-4369-81f1-92a2e8a97db7-118
fc_1eefa097-c054-4210-b361-85f1a4c4f82a_0
output_path: C:\Users\pedro\.cursor\projects\c-Users-pedro-OneDrive-rea-de-Trabalho-Econometria-Projeto\terminals\38510.txt
</task>
</system_notification>
<user_query>Briefly inform the user about the task result and perform any follow-up actions (if needed). If there's no follow-ups needed, don't explicitly say that.</user_query>

---

**Cursor**

Subetapa 5.3 — papel: tutora. A busca no OneDrive terminou: não há outro `dados.R`, e o único `Base_Final.csv` é o da pasta do projeto, gravado às 18:26. O script que está valendo é o `Trabalho_Final.R`.

---

**User**

isso eu já acho que não é necessário, o mais importante mesmo é estar na orem correta e não estar cortada

---

**Cursor**

Subetapa 5.3 — papel: tutora. Pelo critério que você acabou de definir, o `Base_Final.csv` está inteiro.

Ele tem 9.477 linhas físicas: o cabeçalho e as 9.476 dos aptos. São 53 colunas, e as 9.476 linhas de dados têm essas 53. Nenhuma ficou com campo a menos ou a mais. A coluna não está cortada no meio, e a ordem acompanha o cabeçalho.

O que permanece é o acento dentro de algumas palavras: `ELEIÇÃO` e `MARANHÃO` estão com um símbolo no lugar da letra. Isso não separa coluna. Siglas como `SG_UF`, `SG_PARTIDO` e textos como `MASCULINO` e `BRANCA` não dependem desse acento.

1. O controle de partido vai usar a sigla `SG_PARTIDO` ou o nome `NM_PARTIDO`?
2. Em `DS_GRAU_INSTRUCAO` e `DS_COR_RACA`, o símbolo no lugar do acento atrapalha a leitura da categoria?

---

**User**

vamos usar sg, que é utilizando a sigla, sendo um contole mais fácil e rápido, além disso, atrapalha a leitura, mas não a impossibilita, por isso vamos deixar como está

---

**Cursor**

Subetapa 4.2 — papel: mentora. O controle de partido fica a sigla `SG_PARTIDO`, e o `Base_Final.csv` permanece como está: 9.476 linhas, 53 colunas, com o acento trocado pelo símbolo dentro de algumas palavras.

A razão que você deu é prática: a sigla é mais fácil e mais rápida do que o nome. Cada sigla vira uma categoria. Com dados fictícios, a contagem é:

```r
length(unique(base_ficticia$sigla))
```

1. Quantas siglas diferentes existem nos 9.476 aptos?
2. Por que o partido muda o gasto e também muda os votos? Uma frase, sem falar da facilidade da sigla.

---

**User**

32 siglas diferentes, e isso ocorre, pois nesse caso, pois cada partido tera um teto de gastos diferentes e além disso, cada partido chama atenção de forma diferente ao eleitor

---

**Cursor**

Subetapa 4.2 — papel: mentora. A frase que você escreveu tem dois mecanismos, e só um deles já está fechado.

O segundo está coerente com o controle: a sigla muda o voto porque o eleitor reage de forma diferente a cada partido. São 32 siglas nos 9.476 aptos. Na regressão, uma delas fica como referência e as outras 31 entram como categorias.

O primeiro mecanismo ainda pede conferência. Você disse que cada partido tem um teto de gastos diferente. Para deputado federal, o teto do candidato costuma ser ligado ao estado, não à sigla. O que muda por partido é quanto recurso a legenda consegue repassar, não necessariamente o teto legal.

1. Onde vocês vão olhar se o teto de 2022 muda por `SG_PARTIDO` ou por `SG_UF`?
2. Se o teto for da UF, a frase do partido fica só esta: a sigla muda quanto dinheiro chega ao candidato e muda a atenção do eleitor?

---

**User**

pesquisei aqui e relamente, esse teto não é de nenhuma dessas variaveis, ela é o que o partido vai alocar para a pessoa, então  frase fica da forma como voce escreveu agora no final

---

**Cursor**

Subetapa 4.2 — papel: mentora. A justificativa do `SG_PARTIDO` ficou esta: a sigla muda quanto dinheiro chega ao candidato e muda a atenção do eleitor.

Nessa frase, o que você chamou de teto é a quantia que o partido decide repassar à pessoa. Isso não é uma coluna da `Base_Final`. O controle entra pela sigla, não por um número de teto.

`SG_UF` continua na lista, e o teto legal não é mais a razão dela.

1. Por que a UF muda o gasto e também muda os votos, se o repasse vem do partido?
2. Essa frase vale igual para gênero, cor e grau de instrução, ou cada um tem um mecanismo diferente?

---

**User**

o UF é importante, pois em cada um deles temos um número diferente de eleitores e de vagas a deputado federal, além disso gênero e cor, são resultantes de mudar a campanha e a forma que as pessoas vão enxergar a pessoa e sua pauta e a instrução também

---

**Cursor**

Subetapa 4.2 — papel: mentora. A frase da UF explica o lado dos votos: o estado muda quantos eleitores existem e quantas vagas de deputado federal estão em disputa. O mesmo total de votos não representa a mesma coisa em dois estados.

Gênero, cor e instrução ficaram com outra frase. A palavra “resultantes” diz que essas características saem da campanha. No arquivo de candidatos, elas descrevem a pessoa e já estão lá antes do gasto e da apuração.

1. A UF também muda o gasto, ou entra só para os votos de estados diferentes não serem lidos como iguais?
2. Gênero, cor e instrução mudam a campanha e o olhar do eleitor, ou são produzidos pela campanha? Qual das duas direções é a de vocês?

---

**User**

ela muda os gastos, pois em cada estado os gastos para a campanha serão diferentes, além disso essas caracteristicas não são produzidas pela campanha

---

**Cursor**

Subetapa 4.2 — papel: mentora. As duas direções que você acabou de escrever fecham a lista.

A UF muda o gasto, porque a campanha custa diferente em cada estado, e muda os votos, porque eleitores e vagas também mudam. Gênero, cor e instrução são características da pessoa. Elas podem mudar a campanha e o olhar do eleitor. Não são produzidas pelo gasto nem pela apuração.

Com o que vocês já definiram, a regressão tem `QT_VOTOS_NOMINAIS` como resultado, `VR_DESPESA_CONTRATADA` como gasto, e cinco controles: `SG_UF`, `SG_PARTIDO`, gênero, cor e grau de instrução.

1. Essa lista de cinco controles está fechada?
2. Gênero, cor e instrução entram pelo texto (`DS_GENERO`, `DS_COR_RACA`, `DS_GRAU_INSTRUCAO`) ou pelo código numérico?

---

**User**

eu quero agora realmente fazer a regressão em si, como podemos fazer ela, além disso o que acha da ideia de usarmos log na renda, e também fazermos regressões com e sem controles?

---

**Cursor**

Subetapa 4.3 — papel: mentora na forma funcional. Subetapa 5.2 — papel: tutora no comando. A regressão linear no R é o `lm`. Com dados fictícios, uma sem controle e outra com controle categórico ficam assim:

```r
mqo_simples <- lm(y ~ x, data = dados_ficticios)
mqo_controles <- lm(y ~ x + factor(grupo), data = dados_ficticios)
summary(mqo_simples)
```

`factor` trata o grupo como categoria. Sem isso, um código numérico entra como se a ordem dos números fosse uma escala.

Na `Base_Final` não há coluna de renda. O valor em dinheiro é `VR_DESPESA_CONTRATADA`. Logaritmo de zero não existe. Nessa base, 925 candidatos estão com despesa igual a zero, os 878 da soma e os 47 preenchidos. Um `log` puro deixa esses 925 de fora. Isso desfaz a decisão de mantê-los.

1. O log é em `VR_DESPESA_CONTRATADA`?
2. Os 925 com gasto zero saem da regressão, ou vocês querem outra forma que ainda os inclua?
3. As duas regressões são esta: só gasto e votos, e a mesma com `SG_UF`, `SG_PARTIDO`, `DS_GENERO`, `DS_COR_RACA` e `DS_GRAU_INSTRUCAO`?

---

**User**

mas antes eu preciso criar as minhas variáveis correto? e para esse log, nós podemos somar 1 em todos para tratar desses dados o que acha

---

**Cursor**

Subetapa 6.3 — papel: mentora. Nem toda variável da regressão precisa nascer agora. `QT_VOTOS_NOMINAIS`, `VR_DESPESA_CONTRATADA`, `SG_UF`, `SG_PARTIDO`, `DS_GENERO`, `DS_COR_RACA` e `DS_GRAU_INSTRUCAO` já estão na `Base_Final`. O que ainda não existe é a transformação do gasto.

Somar 1 antes do log mantém os 925 zeros na amostra. `log(0 + 1)` vale 0. Quem gastou exatamente zero fica com o mesmo número de quem a conta trata como 1 real, porque a coluna está em reais. Para um gasto de 134.745, somar 1 muda pouco. Para o zero, somar 1 é o que impede o log de quebrar.

Com dados fictícios:

```r
dados_ficticios$log_valor <- log(dados_ficticios$valor + 1)
```

O controle categórico pode entrar na fórmula com `factor`, sem coluna nova.

1. A coluna nova é só o log da despesa contratada mais 1 real?
2. Vocês conseguem dizer, numa frase, o que muda na regressão quando esse log aumenta, já que ele não é o log do gasto puro?

---

**User**

o que acha dessas duas que eu criei agora?

---

**Cursor**

Subetapa 6.3 — papel: mentora. Vou ler as duas variáveis que você criou no script e comentar se elas fazem o que você descreveu.

Subetapa 6.3 — papel: mentora. As duas linhas fazem a conta que está escrita: somam 1 e depois aplicam o log.

```37:38:Trabalho_Final.R
Base_Final$ln_votos <- log(Base_Final$QT_VOTOS_NOMINAIS + 1)
Base_Final$ln_gasto <- log(Base_Final$VR_DESPESA_CONTRATADA + 1)
```

`ln_gasto` é a transformação que vocês tinham descrito para a despesa. Os 925 gastos iguais a zero viram `log(1)`, que é 0, e continuam na amostra.

`ln_votos` é nova. Até aqui o log estava só no gasto. Há 1 apto com `QT_VOTOS_NOMINAIS` igual a zero. Sem o `+ 1`, o log desse voto não existe. Com o `+ 1`, essa pessoa fica com `ln_votos` igual a 0.

A regressão de `ln_votos` em `ln_gasto` não é a mesma coisa que a regressão dos votos no gasto em reais. As duas usam outra escala.

1. Por que os votos também entram em log, e não só a despesa?
2. As regressões com e sem controles usam `ln_votos` e `ln_gasto`, ou uma delas continua em `QT_VOTOS_NOMINAIS` e `VR_DESPESA_CONTRATADA`?

---

**User**

Os votos também entram em log porque a quantidade de votos é tão desigual quanto o gasto. e temos também um canditato com 0 votos e precisamos incluir ele. gostaria de saber agora o que acha de outras variáveis como cor, genero, se já foi deputado e com ensino superior completo, o que acha e tMBÉM recomenda mais algum?

---

**Cursor**

Subetapa 4.2 — papel: mentora. Vou olhar se “já foi deputado” e “superior completo” aparecem como coluna na base, antes de comentar a lista.

Subetapa 4.2 — papel: mentora. A frase do log dos votos combina com a do gasto: a quantidade é desigual e o zero precisa continuar na amostra. `ln_votos` faz isso.

Gênero e cor já estavam na lista, com a direção que você corrigiu: são da pessoa, mudam a campanha e o olhar do eleitor, e não são produzidas pela campanha. Na base, `DS_GENERO` tem masculino, feminino e 2 casos de não divulgável. `DS_COR_RACA` tem branca, parda, preta, indígena, amarela, não informado e 2 não divulgáveis.

“Ensino superior completo” não é a mesma variável que `DS_GRAU_INSTRUCAO`. O grau tem vários níveis. Superior completo é um corte: 5.592 dos 9.476 ficam de um lado e todos os outros níveis ficam do outro.

“Já foi deputado” não é coluna nesse arquivo. `DS_SIT_TOT_TURNO` é o resultado de 2022, que sai dos votos. Não é mandato anterior.

Não vou acrescentar outro controle. A omissão também é escolha de vocês.

1. O grau entra inteiro, com todos os níveis, ou só como superior completo contra o resto?
2. Em qual coluna vocês vão ler se a pessoa já tinha sido deputada antes de 2022?

---

**User**

eu acho que por falta de dados e por não uerer ver dados passados, vou tirar essa métrica e botar como uma falta em nossa regressão, o que acha?

---

**Cursor**

Subetapa 4.2 — papel: mentora. Tirar “já foi deputado” combina com o que está na base: essa informação não é coluna do arquivo, e `DS_SIT_TOT_TURNO` é o resultado de 2022, não um mandato anterior.

A falta fica de pé se quem já era deputado gasta de outro jeito e também recebe votos de outro jeito. Sem essa informação, o coeficiente do gasto mistura as duas coisas. Isso é uma limitação da regressão, não uma variável escondida na `Base_Final`.

1. Escrevam essa limitação numa frase de vocês: o que o gasto pode estar captando além do dinheiro, por falta do mandato anterior?
2. Sem essa métrica, a lista de controles fica `SG_UF`, `SG_PARTIDO`, `DS_GENERO`, `DS_COR_RACA` e o grau de instrução? O grau entra inteiro ou só como superior completo?

---

**User**

confira como está o código, eu criei algumas variaveis, mas gostaria de ajuda em como fazer a de idade

---

**Cursor**

Subetapa 6.3 — papel: mentora nas variáveis que você criou, e tutora no cálculo da idade. Vou ler o script antes de comentar.

Subetapa 6.3 — papel: mentora nas variáveis criadas, e tutora na idade. O `write.csv` está na linha 32, e as colunas novas começam na 37. O arquivo `Base_Final.csv` não recebe `ln_votos`, `ln_gasto` nem as dummies. Elas ficam só na sessão, se o script passar da linha 37.

`mulher`, `preta`, `parda` e `amarela` comparam textos sem acento: `FEMININO`, `PRETA`, `PARDA`, `AMARELA`. Isso fecha com o arquivo. `genero_nao_divulgavel`, `indigena`, `cor_nao_informada` e `cor_nao_divulgavel` comparam `NÃO` e `INDÍGENA` com acento. No CSV que o `fread` lê, esse acento não é a letra. É o símbolo de substituição. A condição pode ficar falsa para todo mundo, e esses casos caem na categoria omitida: masculino e branca. Confira com:

```r
unique(base_ficticia$categoria)
```

`eleito` marca quem tem `DS_SIT_TOT_TURNO` começando por `ELEITO`. Isso pega eleito por média e eleito por QP. Suplente e não eleito ficam 0. Essa coluna é o resultado de 2022, que sai dos votos.

A idade não está no arquivo. O que existe é `DT_NASCIMENTO`, no formato dia/mês/ano, como `08/06/1972`. A conta é a data de referência menos o nascimento, em anos completos. Com datas fictícias:

```r
nascimento <- as.Date("08/06/1972", format = "%d/%m/%Y")
referencia <- as.Date("02/10/2022", format = "%d/%m/%Y")
idade <- as.integer(format(referencia, "%Y")) - as.integer(format(nascimento, "%Y"))
idade <- idade - (format(referencia, "%m%d") < format(nascimento, "%m%d"))
```

A segunda linha tira 1 quando o aniversário ainda não chegou na data de referência.

1. A idade é no dia da eleição, `02/10/2022`, ou em outra data?
2. `eleito` entra na regressão dos votos, ou é para outra conta?

---

**User**

eu fiz algumas alterações, veja se agora está correto

---

**Cursor**

Subetapa 6.3 — papel: mentora. Vou ler o script de novo e conferir se as dummies, a idade e o `eleito` batem com o que está no arquivo.

Subetapa 6.3 — papel: mentora. O `parse` passou. As dummies que dependiam do acento agora olham o começo ou o fim do texto, e isso evita a letra quebrada.

`genero_nao_divulgavel` fica 1 quando `DS_GENERO` termina em `VEL`. `indigena` fica 1 quando `DS_COR_RACA` começa com `IND`. `cor_nao_informada` termina em `INFORMADO`. `cor_nao_divulgavel` termina em `VEL`. `FEMININO`, `PRETA`, `PARDA` e `AMARELA` continuam na comparação exata. Nenhuma dessas regras pega a categoria omitida, masculino ou branca.

Na base de 9.476 aptos, as contagens para conferir são: `mulher` 3.346, `genero_nao_divulgavel` 2, `preta` 1.320, `parda` 3.214, `amarela` 39, `indigena` 50, `cor_nao_informada` 56 e `cor_nao_divulgavel` 2.

A idade ainda não está no script. O `write.csv` continua na linha 32, antes das colunas novas, então o CSV em disco não leva `ln_votos`, `ln_gasto` nem as dummies. `eleito` continua marcando o resultado de 2022.

1. As somas das dummies bateram com esses números?
2. `eleito` entra na regressão dos votos ou fica fora dela?

---

**User**

veja agora o código de idade, eu já respondi algumas de suas petguntas, eleito a principio não entra na regressão mas estamos vendo

---

**Cursor**

Subetapa 6.3 — papel: mentora. Vou ler o trecho da idade e conferir a conta com a data que está no código. `eleito` fica fora da regressão por enquanto.

Subetapa 6.3 — papel: mentora. A idade no script é a idade completa em 2 de outubro de 2022, o dia da eleição. `eleito` continua no script e, por enquanto, fora da regressão.

```53:57:Trabalho_Final.R
nascimento <- as.Date(Base_Final$DT_NASCIMENTO, "%d/%m/%Y")
eleicao <- as.Date("2022-10-02")
anos <- as.numeric(format(eleicao, "%Y")) - as.numeric(format(nascimento, "%Y"))
ja_fez_aniversario <- format(eleicao, "%m-%d") >= format(nascimento, "%m-%d")
Base_Final$idade <- ifelse(ja_fez_aniversario, anos, anos - 1)
```

Quem já fez aniversário até essa data fica com `2022` menos o ano de nascimento. Quem ainda não fez fica com um ano a menos. No dia do aniversário, a comparação `>=` conta o ano novo. Apliquei essa mesma conta às datas do CSV: 9.474 idades, de 20 a 92 anos. Nenhuma abaixo de 18 e nenhuma acima de 100. Há 2 pessoas com 20 anos e 21 com 21.

Duas datas de nascimento estão vazias. No R elas viram `NA`, e `idade` fica ausente. Uma regressão que usa `idade` tira essas duas linhas.

1. Essas duas pessoas sem data saem da regressão ou a idade delas fica de fora só nessa coluna?
2. A idade entra como controle porque muda o gasto e os votos? Em uma frase, por quê?

---

**User**

essas duas pessoas saem da regressão que usam idade, mas nas outras ficam, e idade é importante, pois pessoas mais velhas tendem a ganhar mais votos e a ter mais acesso a dinheiro

---

**Cursor**

Subetapa 4.2 — papel: mentora. A frase da idade fecha com o controle: ela vem antes da campanha, pode mudar o acesso a dinheiro e pode mudar os votos.

As duas pessoas sem data não precisam sair da `Base_Final`. O `lm` tira, sozinho, a linha em que a variável usada está ausente. Na regressão que leva `idade`, as duas ficam de fora. Na que não leva `idade`, as duas permanecem. São 9.474 de um lado e 9.476 do outro.

1. `idade` entra só na regressão com controles, junto com UF, partido, gênero, cor e instrução?
2. O grau de instrução nessa regressão é o texto inteiro de `DS_GRAU_INSTRUCAO` ou só superior completo?

---

**User**

eu pensei em usar o grau de instrução diretamente na regressão, sem criar novas dummies, o que acha?

---

**Cursor**

Subetapa 4.3 — papel: mentora. Usar `DS_GRAU_INSTRUCAO` direto, sem montar as dummies na mão, é uma forma coerente com o que você descreveu: cada nível fica como categoria, e um deles sai como referência.

No `lm`, texto entra como fator. O R cria as categorias sozinho. O código numérico `CD_GRAU_INSTRUCAO` não faz isso: ele trata 1, 2 e 3 como se a distância entre eles fosse igual. A coluna da regressão é o texto.

Com dados fictícios:

```r
lm(y ~ x + factor(estudo), data = dados_ficticios)
```

Na base, o grau tem superior completo, superior incompleto, ensino médio completo e incompleto, fundamental completo e incompleto, lê e escreve, e 2 casos de não divulgável. O símbolo no lugar do acento não separa esses níveis, desde que o texto de cada um seja sempre o mesmo.

1. A referência omitida é qual nível?
2. Os 2 casos de não divulgável ficam como categoria própria?

---

**User**

eu montei aqui as regressões com as dummies, seguindo o modelo que voce me propos, veja o que acha

---

**Cursor**

Subetapa 8.1 — papel: mentora. Vou ler as fórmulas que você montou e conferir se elas seguem o gasto, os votos e os controles que vocês definiram.

Subetapa 8.2 — papel: mentora. As três fórmulas usam `ln_votos` e `ln_gasto`. `eleito` não entra em nenhuma. Isso segue o que você disse.

`m1` é a regressão sem controles. Ela usa as 9.476 linhas, inclusive as duas sem data de nascimento.

`m3` é a regressão com a lista fechada: `idade`, as dummies de gênero e de cor, `DS_GRAU_INSTRUCAO`, `SG_UF` e `SG_PARTIDO`. Como `idade` está na fórmula, o `lm` tira as duas linhas sem data. Ficam 9.474.

`m2` é uma terceira regressão. Ela tem idade, gênero, cor e instrução, e não tem UF nem partido. Essa etapa do meio não estava na dupla “com controles e sem controles”.

`as.factor` nas três categorias faz o que a função promete: um nível sai como referência e os outros entram. O script não escolhe qual nível sai. O `summary` mostra os níveis que ficaram. O que não aparecer é a referência.

1. `m2` fica no trabalho, ou a comparação é só `m1` com `m3`?
2. No `summary(m3)`, qual grau, qual UF e qual partido não aparecem?

---

**User**

eu gostaria de fazer sem o ln tambem o que acha?

---

**Cursor**

Subetapa 4.3 — papel: mentora. Uma regressão sem log é outra forma funcional, ao lado da que já está no script. Ela usa as colunas originais, `QT_VOTOS_NOMINAIS` e `VR_DESPESA_CONTRATADA`, que já existem. Os zeros continuam na conta, sem somar 1.

O log responde na escala que vocês justificaram: voto e gasto são desiguais, e o zero precisa entrar. A regressão em níveis responde na unidade da pergunta: votos e reais. As duas não estimam o mesmo objeto.

Com dados fictícios, a versão sem log repete a fórmula trocando as colunas:

```r
lm(y ~ x, data = dados_ficticios)
lm(y ~ x + factor(grupo), data = dados_ficticios)
```

1. Sem log, vocês repetem só `m1` e `m3`, ou também o `m2`?
2. O que a regressão em reais mostra que a regressão em log não mostra?

---

**User**

genero_nao_divulgavel                                            NA         NA isso está correto?

---

**Cursor**

Subetapa 8.1 — papel: tutora. Vou ver se `genero_nao_divulgavel` ainda varia na regressão que usa `idade`, porque um coeficiente `NA` costuma ser variável sem variação na amostra estimada.

Subetapa 8.1 — papel: tutora. O `NA` está coerente com a amostra. Não é erro de digitação da fórmula.

`genero_nao_divulgavel` só vale 1 para duas pessoas. Essas duas são exatamente as que estão sem `DT_NASCIMENTO`. Em `m2` e `m3`, `idade` entra na fórmula, então o `lm` tira as duas. Na amostra que sobra, a dummy é 0 em todas as linhas. Sem variação, o coeficiente não existe, e o R mostra `NA` no lugar do número e do erro-padrão.

As mesmas duas pessoas também são “não divulgável” em cor e em grau de instrução. `cor_nao_divulgavel` deve aparecer como `NA` do mesmo jeito. O nível de `DS_GRAU_INSTRUCAO` correspondente some da regressão com idade.

`m1` não usa essa dummy, então esse `NA` não aparece lá.

1. No `summary(m3)`, `cor_nao_divulgavel` também está `NA`?
2. Essa categoria sai das regressões com idade, ou vocês querem uma regressão com ela e sem `idade`?

---

**User**

vou mostrar nossos resultados > summary(m3)

Call:
lm(formula = QT_VOTOS_NOMINAIS ~ VR_DESPESA_CONTRATADA + idade + 
    mulher + genero_nao_divulgavel + preta + parda + amarela + 
    indigena + cor_nao_informada + cor_nao_divulgavel + as.factor(DS_GRAU_INSTRUCAO) + 
    as.factor(SG_UF) + as.factor(SG_PARTIDO), data = Base_Final)

Residuals:
    Min      1Q  Median      3Q     Max 
 -97493   -5527    -627    3670 1453453 

Coefficients: (2 not defined because of singularities)
                                                            Estimate Std. Error
(Intercept)                                                2.260e+03  3.715e+03
VR_DESPESA_CONTRATADA                                      3.493e-02  5.379e-04
idade                                                     -1.844e+02  2.765e+01
mulher                                                    -4.066e+03  6.426e+02
genero_nao_divulgavel                                             NA         NA
preta                                                     -2.472e+03  9.614e+02
parda                                                     -1.906e+03  7.296e+02
amarela                                                    6.297e+03  4.745e+03
indigena                                                   1.815e+03  4.225e+03
cor_nao_informada                                          2.891e+02  4.120e+03
cor_nao_divulgavel                                                NA         NA
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO -4.008e+02  2.625e+03
as.factor(DS_GRAU_INSTRUCAO)ENSINO M�DIO COMPLETO         -9.523e+02  1.682e+03
as.factor(DS_GRAU_INSTRUCAO)ENSINO M�DIO INCOMPLETO       -3.714e+02  2.644e+03
as.factor(DS_GRAU_INSTRUCAO)L� E ESCREVE                   8.754e+02  3.728e+03
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO              1.953e+02  1.628e+03
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO           -1.548e+03  1.869e+03
as.factor(SG_UF)AL                                         5.322e+03  3.552e+03
as.factor(SG_UF)AM                                         7.026e+03  3.555e+03
as.factor(SG_UF)AP                                        -4.712e+03  3.695e+03
as.factor(SG_UF)BA                                         1.086e+04  2.851e+03
as.factor(SG_UF)CE                                         1.292e+04  3.058e+03
as.factor(SG_UF)DF                                         5.231e+03  3.366e+03
as.factor(SG_UF)ES                                         4.185e+03  3.398e+03
as.factor(SG_UF)GO                                         5.820e+03  3.068e+03
as.factor(SG_UF)MA                                         8.135e+03  3.086e+03
as.factor(SG_UF)MG                                         1.011e+04  2.772e+03
as.factor(SG_UF)MS                                         5.704e+03  3.568e+03
as.factor(SG_UF)MT                                         4.838e+02  3.562e+03
as.factor(SG_UF)PA                                         1.387e+04  3.123e+03
as.factor(SG_UF)PB                                         7.212e+03  3.357e+03
as.factor(SG_UF)PE                                         7.730e+03  2.994e+03
as.factor(SG_UF)PI                                         6.881e+03  3.535e+03
as.factor(SG_UF)PR                                         9.038e+03  2.896e+03
as.factor(SG_UF)RJ                                         8.954e+03  2.785e+03
as.factor(SG_UF)RN                                         6.528e+03  3.469e+03
as.factor(SG_UF)RO                                        -1.339e+03  3.557e+03
as.factor(SG_UF)RR                                         1.494e+03  3.613e+03
as.factor(SG_UF)RS                                         1.062e+04  2.942e+03
as.factor(SG_UF)SC                                         1.064e+04  3.156e+03
as.factor(SG_UF)SE                                         6.518e+03  3.570e+03
as.factor(SG_UF)SP                                         1.322e+04  2.742e+03
as.factor(SG_UF)TO                                        -1.457e+03  3.584e+03
as.factor(SG_PARTIDO)AVANTE                               -6.751e+02  2.255e+03
as.factor(SG_PARTIDO)CIDADANIA                            -8.917e+02  2.929e+03
as.factor(SG_PARTIDO)DC                                    2.762e+03  2.639e+03
as.factor(SG_PARTIDO)MDB                                  -1.420e+02  2.186e+03
as.factor(SG_PARTIDO)NOVO                                  1.725e+02  2.676e+03
as.factor(SG_PARTIDO)PATRIOTA                             -9.145e+02  2.202e+03
as.factor(SG_PARTIDO)PC do B                              -2.626e+03  4.096e+03
as.factor(SG_PARTIDO)PCB                                  -2.120e+03  5.275e+03
as.factor(SG_PARTIDO)PCO                                  -1.873e+02  6.514e+03
as.factor(SG_PARTIDO)PDT                                   2.421e+03  2.191e+03
as.factor(SG_PARTIDO)PL                                    2.103e+04  2.178e+03
as.factor(SG_PARTIDO)PMB                                   4.345e+02  2.786e+03
as.factor(SG_PARTIDO)PMN                                  -3.061e+02  2.480e+03
as.factor(SG_PARTIDO)PODE                                 -2.949e+03  2.166e+03
as.factor(SG_PARTIDO)PP                                   -3.475e+03  2.185e+03
as.factor(SG_PARTIDO)PROS                                 -1.964e+03  2.367e+03
as.factor(SG_PARTIDO)PRTB                                  1.233e+03  2.422e+03
as.factor(SG_PARTIDO)PSB                                  -3.113e+03  2.227e+03
as.factor(SG_PARTIDO)PSC                                  -5.376e+02  2.251e+03
as.factor(SG_PARTIDO)PSD                                   1.167e+03  2.263e+03
as.factor(SG_PARTIDO)PSDB                                 -5.775e+03  2.433e+03
as.factor(SG_PARTIDO)PSOL                                  6.864e+03  2.420e+03
as.factor(SG_PARTIDO)PSTU                                 -8.724e+02  5.197e+03
as.factor(SG_PARTIDO)PT                                    1.085e+04  2.339e+03
as.factor(SG_PARTIDO)PTB                                  -2.305e+03  2.194e+03
as.factor(SG_PARTIDO)PV                                    8.693e+02  3.606e+03
as.factor(SG_PARTIDO)REDE                                 -1.430e+03  2.838e+03
as.factor(SG_PARTIDO)REPUBLICANOS                         -1.856e+02  2.151e+03
as.factor(SG_PARTIDO)SOLIDARIEDADE                        -1.352e+03  2.284e+03
as.factor(SG_PARTIDO)UNI�O                                -1.522e+04  2.221e+03
as.factor(SG_PARTIDO)UP                                    1.568e+03  7.354e+03
                                                          t value Pr(>|t|)    
(Intercept)                                                 0.608 0.542907    
VR_DESPESA_CONTRATADA                                      64.941  < 2e-16 ***
idade                                                      -6.671 2.69e-11 ***
mulher                                                     -6.327 2.61e-10 ***
genero_nao_divulgavel                                          NA       NA    
preta                                                      -2.571 0.010160 *  
parda                                                      -2.613 0.008999 ** 
amarela                                                     1.327 0.184557    
indigena                                                    0.430 0.667461    
cor_nao_informada                                           0.070 0.944062    
cor_nao_divulgavel                                             NA       NA    
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO  -0.153 0.878650    
as.factor(DS_GRAU_INSTRUCAO)ENSINO M�DIO COMPLETO          -0.566 0.571275    
as.factor(DS_GRAU_INSTRUCAO)ENSINO M�DIO INCOMPLETO        -0.140 0.888277    
as.factor(DS_GRAU_INSTRUCAO)L� E ESCREVE                    0.235 0.814333    
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO               0.120 0.904528    
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO            -0.828 0.407441    
as.factor(SG_UF)AL                                          1.499 0.134031    
as.factor(SG_UF)AM                                          1.976 0.048161 *  
as.factor(SG_UF)AP                                         -1.275 0.202195    
as.factor(SG_UF)BA                                          3.809 0.000141 ***
as.factor(SG_UF)CE                                          4.226 2.41e-05 ***
as.factor(SG_UF)DF                                          1.554 0.120259    
as.factor(SG_UF)ES                                          1.232 0.218062    
as.factor(SG_UF)GO                                          1.897 0.057894 .  
as.factor(SG_UF)MA                                          2.636 0.008398 ** 
as.factor(SG_UF)MG                                          3.645 0.000269 ***
as.factor(SG_UF)MS                                          1.599 0.109960    
as.factor(SG_UF)MT                                          0.136 0.891945    
as.factor(SG_UF)PA                                          4.442 9.02e-06 ***
as.factor(SG_UF)PB                                          2.148 0.031708 *  
as.factor(SG_UF)PE                                          2.582 0.009850 ** 
as.factor(SG_UF)PI                                          1.947 0.051595 .  
as.factor(SG_UF)PR                                          3.120 0.001811 ** 
as.factor(SG_UF)RJ                                          3.215 0.001310 ** 
as.factor(SG_UF)RN                                          1.882 0.059898 .  
as.factor(SG_UF)RO                                         -0.376 0.706588    
as.factor(SG_UF)RR                                          0.414 0.679221    
as.factor(SG_UF)RS                                          3.608 0.000310 ***
as.factor(SG_UF)SC                                          3.372 0.000750 ***
as.factor(SG_UF)SE                                          1.826 0.067908 .  
as.factor(SG_UF)SP                                          4.821 1.45e-06 ***
as.factor(SG_UF)TO                                         -0.407 0.684291    
as.factor(SG_PARTIDO)AVANTE                                -0.299 0.764677    
as.factor(SG_PARTIDO)CIDADANIA                             -0.304 0.760767    
as.factor(SG_PARTIDO)DC                                     1.047 0.295240    
as.factor(SG_PARTIDO)MDB                                   -0.065 0.948202    
as.factor(SG_PARTIDO)NOVO                                   0.064 0.948613    
as.factor(SG_PARTIDO)PATRIOTA                              -0.415 0.677973    
as.factor(SG_PARTIDO)PC do B                               -0.641 0.521408    
as.factor(SG_PARTIDO)PCB                                   -0.402 0.687806    
as.factor(SG_PARTIDO)PCO                                   -0.029 0.977061    
as.factor(SG_PARTIDO)PDT                                    1.105 0.269223    
as.factor(SG_PARTIDO)PL                                     9.657  < 2e-16 ***
as.factor(SG_PARTIDO)PMB                                    0.156 0.876049    
as.factor(SG_PARTIDO)PMN                                   -0.123 0.901782    
as.factor(SG_PARTIDO)PODE                                  -1.362 0.173338    
as.factor(SG_PARTIDO)PP                                    -1.590 0.111851    
as.factor(SG_PARTIDO)PROS                                  -0.830 0.406687    
as.factor(SG_PARTIDO)PRTB                                   0.509 0.610703    
as.factor(SG_PARTIDO)PSB                                   -1.398 0.162266    
as.factor(SG_PARTIDO)PSC                                   -0.239 0.811232    
as.factor(SG_PARTIDO)PSD                                    0.516 0.605956    
as.factor(SG_PARTIDO)PSDB                                  -2.373 0.017648 *  
as.factor(SG_PARTIDO)PSOL                                   2.836 0.004576 ** 
as.factor(SG_PARTIDO)PSTU                                  -0.168 0.866699    
as.factor(SG_PARTIDO)PT                                     4.640 3.53e-06 ***
as.factor(SG_PARTIDO)PTB                                   -1.051 0.293475    
as.factor(SG_PARTIDO)PV                                     0.241 0.809476    
as.factor(SG_PARTIDO)REDE                                  -0.504 0.614367    
as.factor(SG_PARTIDO)REPUBLICANOS                          -0.086 0.931218    
as.factor(SG_PARTIDO)SOLIDARIEDADE                         -0.592 0.553839    
as.factor(SG_PARTIDO)UNI�O                                 -6.853 7.68e-12 ***
as.factor(SG_PARTIDO)UP                                     0.213 0.831155    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 29380 on 9402 degrees of freedom
  (2 observations deleted due to missingness)
Multiple R-squared:  0.3809,    Adjusted R-squared:  0.3762 
F-statistic: 81.46 on 71 and 9402 DF,  p-value: < 2.2e-16

> m4 <- lm(ln_votos ~ ln_gasto, data = Base_Final)
> summary(m4)

Call:
lm(formula = ln_votos ~ ln_gasto, data = Base_Final)

Residuals:
    Min      1Q  Median      3Q     Max 
-6.1739 -1.1130 -0.1029  1.0048  6.5739 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 3.956373   0.045217   87.50   <2e-16 ***
ln_gasto    0.323193   0.004139   78.09   <2e-16 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 1.547 on 9474 degrees of freedom
Multiple R-squared:  0.3916,    Adjusted R-squared:  0.3915 
F-statistic:  6098 on 1 and 9474 DF,  p-value: < 2.2e-16

> 
> m5 <- lm(
+   ln_votos ~ ln_gasto + idade + mulher + genero_nao_divulgavel +
+     preta + parda + amarela + indigena + cor_nao_informada + cor_nao_divulga$
+     as.factor(DS_GRAU_INSTRUCAO),
+   data = Base_Final
+ )
> summary(m5)

Call:
lm(formula = ln_votos ~ ln_gasto + idade + mulher + genero_nao_divulgavel + 
    preta + parda + amarela + indigena + cor_nao_informada + 
    cor_nao_divulgavel + as.factor(DS_GRAU_INSTRUCAO), data = Base_Final)

Residuals:
    Min      1Q  Median      3Q     Max 
-5.7902 -1.0118 -0.1075  0.9184  6.3873 

Coefficients: (2 not defined because of singularities)
                                                           Estimate Std. Error
(Intercept)                                                4.345601   0.112268
ln_gasto                                                   0.301817   0.004008
idade                                                     -0.003780   0.001332
mulher                                                    -0.873732   0.031433
genero_nao_divulgavel                                            NA         NA
preta                                                     -0.346784   0.045582
parda                                                     -0.357343   0.033554
amarela                                                    0.103039   0.231896
indigena                                                   0.092133   0.205287
cor_nao_informada                                         -0.119197   0.194417
cor_nao_divulgavel                                               NA         NA
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO  0.025156   0.128422
as.factor(DS_GRAU_INSTRUCAO)ENSINO M�DIO COMPLETO          0.123172   0.082118
as.factor(DS_GRAU_INSTRUCAO)ENSINO M�DIO INCOMPLETO       -0.046202   0.129329
as.factor(DS_GRAU_INSTRUCAO)L� E ESCREVE                  -0.397007   0.182141
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO              0.728882   0.079186
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO            0.389759   0.091091
                                                          t value Pr(>|t|)    
(Intercept)                                                38.707  < 2e-16 ***
ln_gasto                                                   75.313  < 2e-16 ***
idade                                                      -2.838  0.00455 ** 
mulher                                                    -27.796  < 2e-16 ***
genero_nao_divulgavel                                          NA       NA    
preta                                                      -7.608 3.05e-14 ***
parda                                                     -10.650  < 2e-16 ***
amarela                                                     0.444  0.65681    
indigena                                                    0.449  0.65359    
cor_nao_informada                                          -0.613  0.53983    
cor_nao_divulgavel                                             NA       NA    
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO   0.196  0.84470    
as.factor(DS_GRAU_INSTRUCAO)ENSINO M�DIO COMPLETO           1.500  0.13367    
as.factor(DS_GRAU_INSTRUCAO)ENSINO M�DIO INCOMPLETO        -0.357  0.72092    
as.factor(DS_GRAU_INSTRUCAO)L� E ESCREVE                   -2.180  0.02931 *  
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO               9.205  < 2e-16 ***
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO             4.279 1.90e-05 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 1.442 on 9459 degrees of freedom
  (2 observations deleted due to missingness)
Multiple R-squared:  0.4716,    Adjusted R-squared:  0.4709 
F-statistic: 603.1 on 14 and 9459 DF,  p-value: < 2.2e-16

> 
> m6 <- lm(
+   ln_votos ~ ln_gasto + idade + mulher + genero_nao_divulgavel +
+     preta + parda + amarela + indigena + cor_nao_informada + cor_nao_divulga$
+     as.factor(DS_GRAU_INSTRUCAO) + as.factor(SG_UF) + as.factor(SG_PARTIDO),
+   data = Base_Final
+ )
> summary(m6)

Call:
lm(formula = ln_votos ~ ln_gasto + idade + mulher + genero_nao_divulgavel + 
    preta + parda + amarela + indigena + cor_nao_informada + 
    cor_nao_divulgavel + as.factor(DS_GRAU_INSTRUCAO) + as.factor(SG_UF) + 
    as.factor(SG_PARTIDO), data = Base_Final)

Residuals:
    Min      1Q  Median      3Q     Max 
-5.0929 -0.9124 -0.1066  0.8552  5.1123 

Coefficients: (2 not defined because of singularities)
                                                           Estimate Std. Error
(Intercept)                                                3.303958   0.168998
ln_gasto                                                   0.264832   0.004352
idade                                                     -0.006273   0.001238
mulher                                                    -0.865114   0.028750
genero_nao_divulgavel                                            NA         NA
preta                                                     -0.374587   0.042943
parda                                                     -0.309441   0.032568
amarela                                                    0.200692   0.212534
indigena                                                   0.171282   0.189212
cor_nao_informada                                          0.145821   0.184638
cor_nao_divulgavel                                               NA         NA
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO  0.009988   0.117572
as.factor(DS_GRAU_INSTRUCAO)ENSINO M�DIO COMPLETO          0.066620   0.075321
as.factor(DS_GRAU_INSTRUCAO)ENSINO M�DIO INCOMPLETO       -0.076187   0.118384
as.factor(DS_GRAU_INSTRUCAO)L� E ESCREVE                  -0.197636   0.166961
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO              0.546128   0.073037
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO            0.219801   0.083718
as.factor(SG_UF)AL                                         0.500486   0.159061
as.factor(SG_UF)AM                                         0.927139   0.159233
as.factor(SG_UF)AP                                         0.103476   0.165494
as.factor(SG_UF)BA                                         0.836198   0.127674
as.factor(SG_UF)CE                                         0.658271   0.136956
as.factor(SG_UF)DF                                         0.592966   0.150773
as.factor(SG_UF)ES                                         1.033354   0.152178
as.factor(SG_UF)GO                                         0.654053   0.137477
as.factor(SG_UF)MA                                         0.865832   0.138213
as.factor(SG_UF)MG                                         0.585805   0.124162
as.factor(SG_UF)MS                                         0.806107   0.159818
as.factor(SG_UF)MT                                         0.799842   0.159548
as.factor(SG_UF)PA                                         1.112348   0.139850
as.factor(SG_UF)PB                                         0.707363   0.150359
as.factor(SG_UF)PE                                         0.885970   0.134116
as.factor(SG_UF)PI                                         0.563510   0.158312
as.factor(SG_UF)PR                                         0.415423   0.129717
as.factor(SG_UF)RJ                                         0.856458   0.124722
as.factor(SG_UF)RN                                         0.739846   0.155380
as.factor(SG_UF)RO                                         0.408028   0.159319
as.factor(SG_UF)RR                                        -0.339906   0.161819
as.factor(SG_UF)RS                                         0.540138   0.131686
as.factor(SG_UF)SC                                         0.759705   0.141302
as.factor(SG_UF)SE                                         0.810323   0.159924
as.factor(SG_UF)SP                                         0.866700   0.122816
as.factor(SG_UF)TO                                         0.069124   0.160584
as.factor(SG_PARTIDO)AVANTE                                0.765683   0.101848
as.factor(SG_PARTIDO)CIDADANIA                             0.818077   0.131886
as.factor(SG_PARTIDO)DC                                    0.051177   0.118217
as.factor(SG_PARTIDO)MDB                                   1.260001   0.098881
as.factor(SG_PARTIDO)NOVO                                  0.907482   0.119963
as.factor(SG_PARTIDO)PATRIOTA                              0.269155   0.099498
as.factor(SG_PARTIDO)PC do B                               1.399643   0.183852
as.factor(SG_PARTIDO)PCB                                   1.034081   0.236253
as.factor(SG_PARTIDO)PCO                                   1.182174   0.293496
as.factor(SG_PARTIDO)PDT                                   0.874445   0.099272
as.factor(SG_PARTIDO)PL                                    2.112842   0.098438
as.factor(SG_PARTIDO)PMB                                   1.078846   0.125904
as.factor(SG_PARTIDO)PMN                                   0.133580   0.111203
as.factor(SG_PARTIDO)PODE                                  0.767595   0.098256
as.factor(SG_PARTIDO)PP                                    1.470767   0.098718
as.factor(SG_PARTIDO)PROS                                  0.461849   0.106012
as.factor(SG_PARTIDO)PRTB                                  0.699433   0.108906
as.factor(SG_PARTIDO)PSB                                   0.903906   0.101065
as.factor(SG_PARTIDO)PSC                                   0.560813   0.101313
as.factor(SG_PARTIDO)PSD                                   1.482161   0.102413
as.factor(SG_PARTIDO)PSDB                                  1.111478   0.109667
as.factor(SG_PARTIDO)PSOL                                  0.771656   0.109409
as.factor(SG_PARTIDO)PSTU                                  0.039127   0.232807
as.factor(SG_PARTIDO)PT                                    2.264653   0.105965
as.factor(SG_PARTIDO)PTB                                   0.541535   0.098626
as.factor(SG_PARTIDO)PV                                    0.810927   0.162331
as.factor(SG_PARTIDO)REDE                                  0.255554   0.127724
as.factor(SG_PARTIDO)REPUBLICANOS                          1.371967   0.097862
as.factor(SG_PARTIDO)SOLIDARIEDADE                         0.566064   0.102994
as.factor(SG_PARTIDO)UNI�O                                 1.536885   0.099828
as.factor(SG_PARTIDO)UP                                    2.330289   0.329405
                                                          t value Pr(>|t|)    
(Intercept)                                                19.550  < 2e-16 ***
ln_gasto                                                   60.853  < 2e-16 ***
idade                                                      -5.067 4.11e-07 ***
mulher                                                    -30.091  < 2e-16 ***
genero_nao_divulgavel                                          NA       NA    
preta                                                      -8.723  < 2e-16 ***
parda                                                      -9.501  < 2e-16 ***
amarela                                                     0.944 0.345051    
indigena                                                    0.905 0.365361    
cor_nao_informada                                           0.790 0.429684    
cor_nao_divulgavel                                             NA       NA    
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO   0.085 0.932300    
as.factor(DS_GRAU_INSTRUCAO)ENSINO M�DIO COMPLETO           0.884 0.376461    
as.factor(DS_GRAU_INSTRUCAO)ENSINO M�DIO INCOMPLETO        -0.644 0.519877    
as.factor(DS_GRAU_INSTRUCAO)L� E ESCREVE                   -1.184 0.236551    
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO               7.477 8.26e-14 ***
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO             2.625 0.008666 ** 
as.factor(SG_UF)AL                                          3.146 0.001658 ** 
as.factor(SG_UF)AM                                          5.823 5.99e-09 ***
as.factor(SG_UF)AP                                          0.625 0.531818    
as.factor(SG_UF)BA                                          6.549 6.08e-11 ***
as.factor(SG_UF)CE                                          4.806 1.56e-06 ***
as.factor(SG_UF)DF                                          3.933 8.46e-05 ***
as.factor(SG_UF)ES                                          6.790 1.19e-11 ***
as.factor(SG_UF)GO                                          4.758 1.99e-06 ***
as.factor(SG_UF)MA                                          6.264 3.90e-10 ***
as.factor(SG_UF)MG                                          4.718 2.42e-06 ***
as.factor(SG_UF)MS                                          5.044 4.65e-07 ***
as.factor(SG_UF)MT                                          5.013 5.45e-07 ***
as.factor(SG_UF)PA                                          7.954 2.02e-15 ***
as.factor(SG_UF)PB                                          4.704 2.58e-06 ***
as.factor(SG_UF)PE                                          6.606 4.16e-11 ***
as.factor(SG_UF)PI                                          3.559 0.000373 ***
as.factor(SG_UF)PR                                          3.203 0.001367 ** 
as.factor(SG_UF)RJ                                          6.867 6.98e-12 ***
as.factor(SG_UF)RN                                          4.762 1.95e-06 ***
as.factor(SG_UF)RO                                          2.561 0.010450 *  
as.factor(SG_UF)RR                                         -2.101 0.035709 *  
as.factor(SG_UF)RS                                          4.102 4.14e-05 ***
as.factor(SG_UF)SC                                          5.376 7.78e-08 ***
as.factor(SG_UF)SE                                          5.067 4.12e-07 ***
as.factor(SG_UF)SP                                          7.057 1.82e-12 ***
as.factor(SG_UF)TO                                          0.430 0.666874    
as.factor(SG_PARTIDO)AVANTE                                 7.518 6.08e-14 ***
as.factor(SG_PARTIDO)CIDADANIA                              6.203 5.78e-10 ***
as.factor(SG_PARTIDO)DC                                     0.433 0.665093    
as.factor(SG_PARTIDO)MDB                                   12.743  < 2e-16 ***
as.factor(SG_PARTIDO)NOVO                                   7.565 4.25e-14 ***
as.factor(SG_PARTIDO)PATRIOTA                               2.705 0.006840 ** 
as.factor(SG_PARTIDO)PC do B                                7.613 2.94e-14 ***
as.factor(SG_PARTIDO)PCB                                    4.377 1.22e-05 ***
as.factor(SG_PARTIDO)PCO                                    4.028 5.67e-05 ***
as.factor(SG_PARTIDO)PDT                                    8.809  < 2e-16 ***
as.factor(SG_PARTIDO)PL                                    21.464  < 2e-16 ***
as.factor(SG_PARTIDO)PMB                                    8.569  < 2e-16 ***
as.factor(SG_PARTIDO)PMN                                    1.201 0.229694    
as.factor(SG_PARTIDO)PODE                                   7.812 6.22e-15 ***
as.factor(SG_PARTIDO)PP                                    14.899  < 2e-16 ***
as.factor(SG_PARTIDO)PROS                                   4.357 1.34e-05 ***
as.factor(SG_PARTIDO)PRTB                                   6.422 1.41e-10 ***
as.factor(SG_PARTIDO)PSB                                    8.944  < 2e-16 ***
as.factor(SG_PARTIDO)PSC                                    5.535 3.19e-08 ***
as.factor(SG_PARTIDO)PSD                                   14.472  < 2e-16 ***
as.factor(SG_PARTIDO)PSDB                                  10.135  < 2e-16 ***
as.factor(SG_PARTIDO)PSOL                                   7.053 1.88e-12 ***
as.factor(SG_PARTIDO)PSTU                                   0.168 0.866535    
as.factor(SG_PARTIDO)PT                                    21.372  < 2e-16 ***
as.factor(SG_PARTIDO)PTB                                    5.491 4.10e-08 ***
as.factor(SG_PARTIDO)PV                                     4.996 5.97e-07 ***
as.factor(SG_PARTIDO)REDE                                   2.001 0.045439 *  
as.factor(SG_PARTIDO)REPUBLICANOS                          14.019  < 2e-16 ***
as.factor(SG_PARTIDO)SOLIDARIEDADE                          5.496 3.98e-08 ***
as.factor(SG_PARTIDO)UNI�O                                 15.395  < 2e-16 ***
as.factor(SG_PARTIDO)UP                                     7.074 1.61e-12 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 1.316 on 9402 degrees of freedom
  (2 observations deleted due to missingness)
Multiple R-squared:  0.5627,    Adjusted R-squared:  0.5594 
F-statistic: 170.4 on 71 and 9402 DF,  p-value: < 2.2e-16

---

**Cursor**

Subetapa 10.1 — papel: tutora. A leitura dos coeficientes é de vocês. O que dá para conferir na saída é a amostra e o que o R não estimou.

O aviso `2 not defined because of singularities` é o mesmo `NA` de antes. Nas regressões com `idade`, as duas pessoas sem data saem. `2 observations deleted due to missingness` fecha com isso. Essas duas eram as únicas com `genero_nao_divulgavel` e `cor_nao_divulgavel` iguais a 1, então esses coeficientes não existem. No log simples, `ln_votos ~ ln_gasto`, os graus de liberdade são 9.474 em 9.476 linhas: ninguém saiu, porque `idade` não está na fórmula.

A categoria que não aparece na tabela é a referência. Em UF, a lista começa em AL e AC não está: a referência é AC. Em instrução, `ENSINO FUNDAMENTAL COMPLETO` não está: essa é a referência. O nível “não divulgável” também não está, porque as duas pessoas saíram com a idade. Em partido, a sigla ausente é a referência.

1. Na regressão em níveis, o número ao lado de `VR_DESPESA_CONTRATADA` está em votos por real. O que esse número diz?
2. Na regressão em log, o número ao lado de `ln_gasto` usa `log(votos + 1)` e `log(gasto + 1)`. O que esse número diz?
3. Qual sigla de partido não apareceu na tabela?

---

**User**

esses NA não deveriam ocorrr, certo? não é estranho isso?

---

**Cursor**

Subetapa 8.1 — papel: tutora. Nessas regressões com `idade`, o `NA` tem de aparecer. A fórmula não está quebrada.

A dummy só vale 1 para duas pessoas. Essas duas não têm data de nascimento. O `lm` apaga as duas porque `idade` está ausente. Nas 9.474 linhas que sobram, `genero_nao_divulgavel` e `cor_nao_divulgavel` são 0 em todo mundo. Um coeficiente precisa de gente com 0 e gente com 1. Sem a segunda, o R escreve `NA`.

Na regressão só com `ln_votos` e `ln_gasto` isso não aparece, porque essa fórmula não usa a dummy nem a idade.

1. Essas duas dummies saem das regressões que usam `idade`?
2. Ou vocês querem uma regressão em que as duas pessoas entrem, e então `idade` fica de fora dessa fórmula?

---

**User**

eu gostaria de fazer histogramas para o log, o que acha?

---

**Cursor**

Subetapa 7.1 — papel: tutora. Um histograma mostra a distribuição de uma coluna numérica. Para os logs que vocês criaram, a função, com dados fictícios, é esta:

```r
hist(dados_ficticios$log_valor, main = "Titulo", xlab = "log do valor")
```

Cada `hist` é um gráfico. `ln_gasto` e `ln_votos` pedem dois. No gasto, os 925 zeros viraram `log(1) = 0`, então esse valor entra no primeiro ponto da escala.

1. Os dois histogramas são de `ln_gasto` e de `ln_votos`?
2. O que vocês querem enxergar neles antes de ler o formato da distribuição?

---

**User**

voce consegue ver os gráficos que eu gerei, de uma olhada e ve o que acha

---

**Cursor**

Subetapa 7.2 — papel: tutora. Vou procurar os gráficos que você salvou e olhar o que está desenhado, sem ler o resultado por vocês.

Subetapa 7.1 — papel: tutora. Não consigo ver o painel de gráficos do VS Code. Na pasta não há figura salva. O que está no script é o comando que gera os três desenhos.

```98:102:Trabalho_Final.R
plot(Base_Final$ln_gasto, Base_Final$ln_votos,
     xlab = "ln(despesa + 1)", ylab = "ln(votos + 1)")

hist(Base_Final$QT_VOTOS_NOMINAIS, breaks = 50, main = "", xlab = "Votos nominais")
hist(Base_Final$VR_DESPESA_CONTRATADA, breaks = 50, main = "", xlab = "Despesa contratada")
```

O `plot` é um gráfico de dispersão dos logs, não um histograma. Os dois `hist` usam votos e despesa em nível, não `ln_votos` nem `ln_gasto`. Com `breaks = 50`, a largura de cada barra é igual em reais e em número de votos. Como o máximo é muito maior que a maior parte dos candidatos, quase todo mundo pode cair na primeira barra.

Para o histograma do log, a coluna do `hist` é a coluna do log. Com dados fictícios:

```r
hist(dados_ficticios$log_valor, main = "", xlab = "log do valor")
```

1. No histograma da despesa em reais, a massa ficou na primeira barra?
2. Os histogramas que você queria ver são os de `ln_gasto` e `ln_votos`? Salve cada um como PNG na pasta do projeto se quiser que eu olhe a figura.

---

**User**

voce não consegue rodar para ver essas imagens não?

---

**Cursor**

Subetapa 7.1 — papel: tutora. Consigo gerar as figuras a partir do `Base_Final.csv`, com as mesmas colunas do script, e olhar os arquivos. Não vou interpretar o formato por vocês.

Subetapa 7.1 — papel: tutora. Rodei os três comandos do script e, ao lado, os histogramas de `ln_gasto` e `ln_votos`. As figuras ficaram em `figuras_tmp`. A leitura do formato continua com vocês.

Nos votos em nível, o eixo vai até cerca de 1,5 milhão e quase todas as 9.476 pessoas estão na primeira barra. Na despesa em reais, a primeira barra passa de 4.000 e o eixo segue até cerca de 3,5 milhões, com uma cauda fina.

No `ln(despesa + 1)` aparece uma barra isolada no zero, os 925 gastos nulos, e o restante se espalha entre cerca de 5 e 15, com o miolo perto de 10 a 12. No `ln(votos + 1)` as barras vão de 0 a cerca de 14, com o miolo perto de 6 a 8. Não é uma barra só.

O gráfico de dispersão usa os dois logs. No zero do gasto há uma linha vertical de votos. À direita, os pontos sobem juntos e ficam mais densos.

1. Esse desenho em nível é o que apareceu no seu painel?
2. O que vocês escrevem, a partir desses histogramas, para justificar o log em vez da escala em reais?

---

**User**

exatamente esses desenhos

---

**Cursor**

Subetapa 7.2 — papel: tutora. Os desenhos batem com o que está no script agora: a dispersão dos logs, os histogramas de `ln_votos` e `ln_gasto`, e os dois em nível, com a massa na primeira barra.

A leitura desses formatos é de vocês. A frase que falta é a justificativa do log.

O que vocês escrevem, a partir desses histogramas, para usar `ln_votos` e `ln_gasto` em vez de votos e despesa em reais?

---

**User**

em reais nossa distribuição era muito puxada por outliesrs grandiosos, quando utilizamos o log nós conseguimos reduzir por completo o efeito desses outliers e chegar em nossa distribuição melhor

---

**Cursor**

Subetapa 4.3 — papel: mentora. A primeira parte da frase combina com os histogramas em reais: a massa fica na primeira barra e a escala vai até cerca de 1,5 milhão de votos e 3,5 milhões de despesa, por causa de poucos valores muito altos.

“Reduzir por completo” é mais forte do que o desenho do log. Em `ln(despesa + 1)` os valores altos se aproximam do resto, mas não somem. E fica uma barra separada no zero, que são os 925 gastos nulos virados em `log(1)`. Em `ln(votos + 1)` o miolo aparece, e ainda há cauda dos dois lados.

1. A barra isolada no zero da despesa entra nessa frase como outlier que sumiu, ou como os 925 zeros que vocês decidiram manter?
2. “Distribuição melhor” é melhor para ver o miolo dos dados, ou melhor porque muda o coeficiente da regressão?

---

**User**

eu gostaria que voce checasse agora a nova sessão de testes que eu criei para cobrir o que fizemos

---

**Cursor**

Subetapa 5.3 — papel: tutora. Vou ler a seção de testes nova no script e conferir se ela cobre o que vocês já definiram, sem reescrever o código.

Subetapa 5.3 — papel: tutora. No `Trabalho_Final.R` salvo às 21:01 não há um bloco separado de testes. O arquivo termina nos histogramas. Se a seção nova ainda está só no editor, ela não entrou no disco.

O que mudou na criação das variáveis é a linha 51, e ela apaga a linha 43. As duas criam `genero_nao_divulgavel`. Vale a de baixo: 1 quando `DS_GENERO` começa com `N`. Entre os textos dessa coluna, só “não divulgável” começa com `N`. `FEMININO` e `MASCULINO` não.

`cor_nao_divulgavel` não é mais criada. `m2`, `m3`, `m5` e `m6` ainda usam esse nome. Numa sessão limpa, o `lm` para com objeto não encontrado. Se a sessão antiga ainda tem a coluna, a fórmula roda com o valor velho.

1. `cor_nao_divulgavel` saiu de propósito das regressões, ou a linha que cria essa coluna se perdeu?
2. A seção de testes está em outro arquivo? Se estiver, salve esse arquivo na pasta e me diga o nome.

---

**User**

veja novamente, slavei agora

---

**Cursor**

Subetapa 5.3 — papel: tutora. Vou ler de novo o que você acabou de salvar.

Subetapa 9.2 — papel: mentora. A seção nova está nas linhas 109 a 115. O `parse` desses comandos fecha, e `library(AER)` carrega `lmtest` e `sandwich`, de onde saem `bptest`, `coeftest` e `vcovHC`.

```109:115:Trabalho_Final.R
#Testes de Hipótese
library(AER)

bptest(m3)
bptest(m6)
coeftest(m6, vcov. = vcovHC, type = "HC1")
coeftest(m3, vcov. = vcovHC, type = "HC1")
```

`bptest` é o teste de Breusch-Pagan, nas regressões em nível e em log com a lista completa de controles. `coeftest` com `HC1` recalcula os erros-padrão dessas duas. Ele roda sempre, sem usar o resultado do teste.

`m3` e `m6` ainda citam `cor_nao_divulgavel`, e essa coluna não é criada. Numa sessão limpa, o `lm` para antes do `bptest`. `genero_nao_divulgavel` continua definido duas vezes: a linha 43 usa o final `VEL`, a linha 51 começa com `N` e substitui a primeira.

1. O `HC1` entra nas duas regressões mesmo se o Breusch-Pagan não acusar heterocedasticidade?
2. `cor_nao_divulgavel` volta para o script ou sai das fórmulas de `m3` e `m6`?

---

**User**

mas ele acusou

---

**Cursor**

Subetapa 9.3 — papel: tutora. A decisão de trocar o erro-padrão é de vocês. O que você viu muda a pergunta que eu tinha feito: o teste acusou, então o `HC1` não está entrando “mesmo se não acusasse”.

O `coeftest` das linhas 114 e 115 já imprime `m6` e `m3` com `HC1`. Isso é a correção robusta à heterocedasticidade. O `summary` de antes usa o erro-padrão comum. Os dois números não são o mesmo.

1. O Breusch-Pagan acusou nas duas, `m3` e `m6`, ou só numa?
2. No relatório, o erro-padrão que vocês vão mostrar é o do `coeftest` com `HC1`? Escrevam essa frase com as palavras de vocês.

---

**User**

eu rodei prieiro os bptest e depois coef

---

**Cursor**

Subetapa 9.3 — papel: tutora. A ordem que você usou é a do script: primeiro `bptest(m3)` e `bptest(m6)`, depois `coeftest` com `HC1`.

O `coeftest` não lê o p-valor do teste. Ele só imprime a mesma regressão com outro erro-padrão. Você viu o teste acusar e, em seguida, pediu essa tabela. A decisão de mostrar o `HC1` no lugar do erro do `summary` continua com vocês.

1. Os dois testes acusaram, o de `m3` e o de `m6`, antes dos dois `coeftest`?
2. Escrevam a frase do relatório: o teste apontou heterocedasticidade e o erro-padrão apresentado é o `HC1`.

---

**User**

mas uma dúvida aqui, voce acha que devemos fazer mais algum tipo de teste ou o que temos está bom?

---

**Cursor**

Subetapa 9.1 — papel: mentora. O que vocês já têm cobre a heterocedasticidade das duas regressões completas, `m3` e `m6`: o Breusch-Pagan e, depois, o erro-padrão `HC1`. Isso não fecha os outros pressupostos do MQO, nem as regressões sem a lista inteira de controles.

O `bptest` não olha forma funcional, nem se os controles estão colados uns nos outros. As singularidades que já apareceram são outro ponto: duas dummies sem variação na amostra com idade. Multicolinearidade entre UF, partido e o restante seria outra pergunta.

1. O teste de heterocedasticidade fica só em `m3` e `m6`, ou entra também nas regressões sem controles?
2. Além desse teste, vocês querem olhar a forma funcional, a colinearidade dos controles, ou param na heterocedasticidade? A escolha do teste é de vocês.

---

**User**

a colinearidade é imperfeita já que conseguimos rodar o R, além disso as outras hipóteses do mqo terão que ser assumidas, considerando nossa amostra, a H1 não é verdade, h2 vamos considerar que é, h3 falsa(testamos) h4 verdadeira, h5 verdadfeira e h6 verdadeira

---

**Cursor**

Subetapa 9.1 — papel: mentora. Vou procurar no material da disciplina a numeração de H1 a H6, para comentar a lista com os nomes que o curso usa.

Subetapa 9.1 — papel: mentora. O único teste que vocês rodaram é o Breusch-Pagan. Ele fala de homocedasticidade. “H3 é falsa porque testamos” só fecha se H3 for essa hipótese. Se H3 for outra coisa, o teste não diz nada sobre ela.

“A colinearidade é imperfeita porque o R rodou” cobre os coeficientes que saíram com número. Dois não saíram: `genero_nao_divulgavel` e `cor_nao_divulgavel` ficaram `NA` por singularidade. Isso é colinearidade perfeita dessas duas dummies na amostra que usa `idade`. Rodar o `lm` não mede se a colinearidade dos outros controles é forte ou fraca.

H1, H2, H4, H5 e H6, do jeito que você escreveu, estão assumidas ou negadas sem outro teste. O workbook trata a normalidade à parte e pergunta o que muda quando a amostra é grande. A de vocês tem 9.474 linhas nas regressões com idade.

1. Escrevam, ao lado de cada letra, a frase da hipótese. Por exemplo: H3 = os erros têm variância constante.
2. H1, que você marcou como falsa, é qual frase?

---

**User**

eu gostaria de fazer tabelas para colocar no reatório, voce teria recomendação de quais fazer, com os resíduos, também o que acha, estou achando o código um pouco simples demais

---

**Cursor**

Subetapa 8.3 — papel: mentora. O script já cobre o que vocês definiram: a base, as duas escalas, os controles, o Breusch-Pagan e o `HC1`. Uma tabela no relatório mostra esses resultados. Ela não precisa de um modelo novo para deixar o código maior.

Duas tabelas cabem no que já está feito. A primeira descreve as variáveis que entram na regressão: votos, despesa, os dois logs, idade e a proporção das dummies. A segunda põe lado a lado as regressões que vocês querem comparar, com o erro-padrão que decidiram mostrar.

Uma tabela com os 9.476 resíduos não acrescenta o que o teste já respondeu. O `summary` já traz mínimo, quartis e máximo dos resíduos. O Breusch-Pagan foi o teste dessa dispersão. Um gráfico de resíduo contra valor ajustado seria outro desenho, não uma tabela.

Com dados fictícios, a função que junta modelos numa tabela é:

```r
stargazer(modelo_a, modelo_b, type = "text")
```

1. Na tabela de regressão entram `m1` e `m3` em níveis, `m4` e `m6` em log, ou as seis?
2. O erro-padrão dessa tabela é o do `summary` ou o `HC1` do `coeftest`?
3. O que uma coluna de resíduos mostraria que o Breusch-Pagan ainda não mostrou?

---

**User**

confira as alterações que eu fiz e veja o que acha, eu pensei relamente em trazer mais visualizações tomando como exemplo o material de aula que eu tenho

---

**Cursor**

Subetapa 7.1 — papel: mentora. Vou ler o que você alterou no script e comparar com o tipo de figura que o material de aula usa, sem reescrever o código.

Subetapa 8.3 — papel: mentora. As tabelas e o gráfico de resíduos entraram no script. A regressão completa ainda quebra antes disso, numa sessão limpa.

`m2`, `m3`, `m5` e `m6` usam `cor_nao_divulgavel`, e nenhuma linha cria essa coluna. O `lm` para com objeto não encontrado. Aí o `stargazer` e o `vcovHC` não rodam. `genero_nao_divulgavel` continua escrito duas vezes: a linha 51, que olha se o texto começa com `N`, substitui a linha 43.

O que você acrescentou, nas linhas 98 a 124, faz o seguinte.

- O primeiro `stargazer` descreve votos, despesa, os dois logs, idade, `mulher`, `preta` e `parda`. Ficam de fora amarela, indígena, instrução, UF e partido, que entram em `m3` e `m6`.
- O `cor` usa só `ln_votos`, `ln_gasto`, `idade` e `mulher`, e tira as duas linhas sem idade.
- `plot(fitted(m6), resid(m6))` é o resíduo contra o valor ajustado da regressão em log com controles. É o desenho de heterocedasticidade. Não é uma tabela de resíduos.
- O segundo `stargazer` coloca `m1`, `m3`, `m4` e `m6`, com erro-padrão `HC1`, e omite as linhas de UF e partido. Essas variáveis continuam na regressão. A tabela só não mostra os coeficientes delas.

`m3` e `m6` têm dois coeficientes `NA`. O `vcovHC` pode falhar nesse modelo, ou o vetor de erros-padrão pode não ter o mesmo tamanho que o `stargazer` espera.

1. `cor_nao_divulgavel` volta ao script ou sai das quatro fórmulas?
2. A tabela descritiva fica só com essas oito colunas, ou entra o restante dos controles?
3. O gráfico de resíduos fica só em `m6`, ou também em `m3`?

---

**User**

O que voce acha de colocar uma egressão de quem ganhou ou não as eleições para utilizar os métodos de ligit e probit e mle?

---

**Cursor**

Subetapa 4.4 — papel: mentora. Probit e logit cabem quando o resultado é 0 ou 1. Os dois são estimados por máxima verossimilhança. MLE, aqui, é o método dessas duas regressões, não um terceiro modelo.

A pergunta que vocês já fecharam é sobre quantidade de votos. “Ganhou ou não” troca o resultado: deixa de ser `QT_VOTOS_NOMINAIS` e passa a ser uma classificação depois da apuração. Isso responde outra pergunta. Pode ficar ao lado das regressões de votos, se vocês disserem o que ela acrescenta.

No script, `eleito` vale 1 quando `DS_SIT_TOT_TURNO` começa com `ELEITO`. Suplente e não eleito ficam 0. A função, com dados fictícios, é:

```r
glm(binario ~ x, data = dados_ficticios, family = binomial(link = "logit"))
glm(binario ~ x, data = dados_ficticios, family = binomial(link = "probit"))
```

1. Essa regressão entra além das de votos, ou no lugar delas?
2. Suplente conta como não ganhou?
3. O que a chance de estar eleito mostra que `ln_votos` não mostra?

---

**User**

confira como está la no código, ela é algo a mais, não substitui nada, suplente conta como não ganho,

---

**Cursor**

Subetapa 4.4 — papel: mentora. `eleito` combina com o que você definiu. `startsWith(..., "ELEITO")` marca eleito por média e eleito por QP como 1. Suplente e não eleito ficam 0. As regressões de votos continuam no script. Logit e probit entram depois, como modelo a mais.

```97:120:Trabalho_Final.R
m_lpm <- lm(
  eleito ~ ln_gasto + idade + mulher +
    preta + parda + amarela + indigena + cor_nao_informada +
    as.factor(DS_GRAU_INSTRUCAO) + as.factor(SG_UF) + as.factor(SG_PARTIDO),
  data = Base_Final
)
...
m_logit <- glm(
  eleito ~ ln_gasto + idade + mulher +
    ...
    as.factor(DS_GRAU_INSTRUCAO) + as.factor(SG_UF),
  ...
  family = binomial(link = "logit")
)
m_probit <- glm(
  ...
  family = binomial(link = "probit")
)
```

O modelo linear de probabilidade tem `SG_PARTIDO`. O logit e o probit não têm. Os três usam `idade`, então as duas pessoas sem data saem. Nenhum dos três usa `cor_nao_divulgavel`.

`m2` ainda usa `cor_nao_divulgavel`, e essa coluna não é criada. Numa sessão limpa, o script para em `m2` e não chega em `m_lpm`, `m_logit` nem `m_probit`.

O `summary` do logit e do probit não é a variação da probabilidade. Isso é outra conta.

1. Partido ficou de fora do logit e do probit de propósito?
2. No relatório, vocês vão mostrar o coeficiente do `summary` ou o efeito marginal?

---

**User**

veja esses resultados que eles nos deram as.factor(SG_PARTIDO)PSDB                                  1.111478   0.109667
as.factor(SG_PARTIDO)PSOL                                  0.771656   0.109409
as.factor(SG_PARTIDO)PSTU                                  0.039127   0.232807
as.factor(SG_PARTIDO)PT                                    2.264653   0.105965
as.factor(SG_PARTIDO)PTB                                   0.541535   0.098626
as.factor(SG_PARTIDO)PV                                    0.810927   0.162331
as.factor(SG_PARTIDO)REDE                                  0.255554   0.127724
as.factor(SG_PARTIDO)REPUBLICANOS                          1.371967   0.097862
as.factor(SG_PARTIDO)SOLIDARIEDADE                         0.566064   0.102994
as.factor(SG_PARTIDO)UNIï¿½O                               1.536885   0.099828
as.factor(SG_PARTIDO)UP                                    2.330289   0.329405
                                                          t value Pr(>|t|)    
(Intercept)                                                19.550  < 2e-16 ***
ln_gasto                                                   60.853  < 2e-16 ***
idade                                                      -5.067 4.11e-07 ***
mulher                                                    -30.091  < 2e-16 ***
genero_nao_divulgavel                                          NA       NA    
preta                                                      -8.723  < 2e-16 ***
parda                                                      -9.501  < 2e-16 ***
amarela                                                     0.944 0.345051    
indigena                                                    0.905 0.365361    
cor_nao_informada                                           0.790 0.429684    
cor_nao_divulgavel                                             NA       NA    
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO   0.085 0.932300    
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO COMPLETO         0.884 0.376461    
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO INCOMPLETO      -0.644 0.519877    
as.factor(DS_GRAU_INSTRUCAO)Lï¿½ E ESCREVE                 -1.184 0.236551    
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO               7.477 8.26e-14 ***
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO             2.625 0.008666 ** 
as.factor(SG_UF)AL                                          3.146 0.001658 ** 
as.factor(SG_UF)AM                                          5.823 5.99e-09 ***
as.factor(SG_UF)AP                                          0.625 0.531818    
as.factor(SG_UF)BA                                          6.549 6.08e-11 ***
as.factor(SG_UF)CE                                          4.806 1.56e-06 ***
as.factor(SG_UF)DF                                          3.933 8.46e-05 ***
as.factor(SG_UF)ES                                          6.790 1.19e-11 ***
as.factor(SG_UF)GO                                          4.758 1.99e-06 ***
as.factor(SG_UF)MA                                          6.264 3.90e-10 ***
as.factor(SG_UF)MG                                          4.718 2.42e-06 ***
as.factor(SG_UF)MS                                          5.044 4.65e-07 ***
as.factor(SG_UF)MT                                          5.013 5.45e-07 ***
as.factor(SG_UF)PA                                          7.954 2.02e-15 ***
as.factor(SG_UF)PB                                          4.704 2.58e-06 ***
as.factor(SG_UF)PE                                          6.606 4.16e-11 ***
as.factor(SG_UF)PI                                          3.559 0.000373 ***
as.factor(SG_UF)PR                                          3.203 0.001367 ** 
as.factor(SG_UF)RJ                                          6.867 6.98e-12 ***
as.factor(SG_UF)RN                                          4.762 1.95e-06 ***
as.factor(SG_UF)RO                                          2.561 0.010450 *  
as.factor(SG_UF)RR                                         -2.101 0.035709 *  
as.factor(SG_UF)RS                                          4.102 4.14e-05 ***
as.factor(SG_UF)SC                                          5.376 7.78e-08 ***
as.factor(SG_UF)SE                                          5.067 4.12e-07 ***
as.factor(SG_UF)SP                                          7.057 1.82e-12 ***
as.factor(SG_UF)TO                                          0.430 0.666874    
as.factor(SG_PARTIDO)AVANTE                                 7.518 6.08e-14 ***
as.factor(SG_PARTIDO)CIDADANIA                              6.203 5.78e-10 ***
as.factor(SG_PARTIDO)DC                                     0.433 0.665093    
as.factor(SG_PARTIDO)MDB                                   12.743  < 2e-16 ***
as.factor(SG_PARTIDO)NOVO                                   7.565 4.25e-14 ***
as.factor(SG_PARTIDO)PATRIOTA                               2.705 0.006840 ** 
as.factor(SG_PARTIDO)PC do B                                7.613 2.94e-14 ***
as.factor(SG_PARTIDO)PCB                                    4.377 1.22e-05 ***
as.factor(SG_PARTIDO)PCO                                    4.028 5.67e-05 ***
as.factor(SG_PARTIDO)PDT                                    8.809  < 2e-16 ***
as.factor(SG_PARTIDO)PL                                    21.464  < 2e-16 ***
as.factor(SG_PARTIDO)PMB                                    8.569  < 2e-16 ***
as.factor(SG_PARTIDO)PMN                                    1.201 0.229694    
as.factor(SG_PARTIDO)PODE                                   7.812 6.22e-15 ***
as.factor(SG_PARTIDO)PP                                    14.899  < 2e-16 ***
as.factor(SG_PARTIDO)PROS                                   4.357 1.34e-05 ***
as.factor(SG_PARTIDO)PRTB                                   6.422 1.41e-10 ***
as.factor(SG_PARTIDO)PSB                                    8.944  < 2e-16 ***
as.factor(SG_PARTIDO)PSC                                    5.535 3.19e-08 ***
as.factor(SG_PARTIDO)PSD                                   14.472  < 2e-16 ***
as.factor(SG_PARTIDO)PSDB                                  10.135  < 2e-16 ***
as.factor(SG_PARTIDO)PSOL                                   7.053 1.88e-12 ***
as.factor(SG_PARTIDO)PSTU                                   0.168 0.866535    
as.factor(SG_PARTIDO)PT                                    21.372  < 2e-16 ***
as.factor(SG_PARTIDO)PTB                                    5.491 4.10e-08 ***
as.factor(SG_PARTIDO)PV                                     4.996 5.97e-07 ***
as.factor(SG_PARTIDO)REDE                                   2.001 0.045439 *  
as.factor(SG_PARTIDO)REPUBLICANOS                          14.019  < 2e-16 ***
as.factor(SG_PARTIDO)SOLIDARIEDADE                          5.496 3.98e-08 ***
as.factor(SG_PARTIDO)UNIï¿½O                               15.395  < 2e-16 ***
as.factor(SG_PARTIDO)UP                                     7.074 1.61e-12 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 1.316 on 9402 degrees of freedom
  (2 observations deleted due to missingness)
Multiple R-squared:  0.5627,    Adjusted R-squared:  0.5594 
F-statistic: 170.4 on 71 and 9402 DF,  p-value: < 2.2e-16

> 
> m_lpm <- lm(
+   eleito ~ ln_gasto + idade + mulher +
+     preta + parda + amarela + indigena + cor_nao_informada +
+     as.factor(DS_GRAU_INSTRUCAO) + as.factor(SG_UF) + as.factor(SG_PARTIDO),
+   data = Base_Final
+ )
> coeftest(m_lpm, vcov. = vcovHC, type = "HC1")
Error in coeftest(m_lpm, vcov. = vcovHC, type = "HC1") : 
  could not find function "coeftest"
> 
> m_logit <- glm(
+   eleito ~ ln_gasto + idade + mulher +
+     preta + parda + amarela + indigena + cor_nao_informada +
+     as.factor(DS_GRAU_INSTRUCAO) + as.factor(SG_UF),
+   data = Base_Final,
+   family = binomial(link = "logit")
+ )
Warning message:
glm.fit: fitted probabilities numerically 0 or 1 occurred 
> summary(m_logit)

Call:
glm(formula = eleito ~ ln_gasto + idade + mulher + preta + parda + 
    amarela + indigena + cor_nao_informada + as.factor(DS_GRAU_INSTRUCAO) + 
    as.factor(SG_UF), family = binomial(link = "logit"), data = Base_Final)

Coefficients:
                                                            Estimate Std. Error
(Intercept)                                               -28.375953   1.358835
ln_gasto                                                    2.047443   0.085475
idade                                                      -0.021110   0.005185
mulher                                                     -0.912363   0.148278
preta                                                      -0.454142   0.248239
parda                                                      -0.252764   0.151262
amarela                                                     0.654107   0.898560
indigena                                                    1.133050   0.768050
cor_nao_informada                                          -0.345870   1.590777
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO   0.135622   0.814214
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO COMPLETO        -0.924389   0.504862
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO INCOMPLETO      -0.135964   0.920662
as.factor(DS_GRAU_INSTRUCAO)Lï¿½ E ESCREVE                -10.823367 330.796625
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO              -0.024992   0.454666
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO             0.051943   0.499329
as.factor(SG_UF)AL                                         -0.698876   0.629848
as.factor(SG_UF)AM                                         -0.615106   0.636852
as.factor(SG_UF)AP                                         -0.108040   0.621429
as.factor(SG_UF)BA                                          0.373004   0.506054
as.factor(SG_UF)CE                                          0.303680   0.536648
as.factor(SG_UF)DF                                         -0.499471   0.630338
as.factor(SG_UF)ES                                         -0.619606   0.592435
as.factor(SG_UF)GO                                         -0.314998   0.545535
as.factor(SG_UF)MA                                         -0.110033   0.550672
as.factor(SG_UF)MG                                         -0.028651   0.494868
as.factor(SG_UF)MS                                         -0.109448   0.633370
as.factor(SG_UF)MT                                         -1.009824   0.622964
as.factor(SG_UF)PA                                          0.533471   0.555792
as.factor(SG_UF)PB                                          0.054482   0.592627
as.factor(SG_UF)PE                                         -0.157611   0.535789
as.factor(SG_UF)PI                                         -0.285265   0.607398
as.factor(SG_UF)PR                                          0.156599   0.530005
as.factor(SG_UF)RJ                                          0.296978   0.497834
as.factor(SG_UF)RN                                         -0.491797   0.631524
as.factor(SG_UF)RO                                         -0.480539   0.628606
as.factor(SG_UF)RR                                          0.585360   0.625111
as.factor(SG_UF)RS                                          0.565122   0.531041
as.factor(SG_UF)SC                                          0.124535   0.562396
as.factor(SG_UF)SE                                          0.136650   0.659906
as.factor(SG_UF)SP                                         -0.359156   0.482152
as.factor(SG_UF)TO                                         -0.164083   0.618019
                                                          z value Pr(>|z|)    
(Intercept)                                               -20.883  < 2e-16 ***
ln_gasto                                                   23.954  < 2e-16 ***
idade                                                      -4.071 4.68e-05 ***
mulher                                                     -6.153 7.60e-10 ***
preta                                                      -1.829   0.0673 .  
parda                                                      -1.671   0.0947 .  
amarela                                                     0.728   0.4666    
indigena                                                    1.475   0.1402    
cor_nao_informada                                          -0.217   0.8279    
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO   0.167   0.8677    
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO COMPLETO        -1.831   0.0671 .  
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO INCOMPLETO      -0.148   0.8826    
as.factor(DS_GRAU_INSTRUCAO)Lï¿½ E ESCREVE                 -0.033   0.9739    
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO              -0.055   0.9562    
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO             0.104   0.9171    
as.factor(SG_UF)AL                                         -1.110   0.2672    
as.factor(SG_UF)AM                                         -0.966   0.3341    
as.factor(SG_UF)AP                                         -0.174   0.8620    
as.factor(SG_UF)BA                                          0.737   0.4611    
as.factor(SG_UF)CE                                          0.566   0.5715    
as.factor(SG_UF)DF                                         -0.792   0.4281    
as.factor(SG_UF)ES                                         -1.046   0.2956    
as.factor(SG_UF)GO                                         -0.577   0.5637    
as.factor(SG_UF)MA                                         -0.200   0.8416    
as.factor(SG_UF)MG                                         -0.058   0.9538    
as.factor(SG_UF)MS                                         -0.173   0.8628    
as.factor(SG_UF)MT                                         -1.621   0.1050    
as.factor(SG_UF)PA                                          0.960   0.3371    
as.factor(SG_UF)PB                                          0.092   0.9268    
as.factor(SG_UF)PE                                         -0.294   0.7686    
as.factor(SG_UF)PI                                         -0.470   0.6386    
as.factor(SG_UF)PR                                          0.295   0.7676    
as.factor(SG_UF)RJ                                          0.597   0.5508    
as.factor(SG_UF)RN                                         -0.779   0.4361    
as.factor(SG_UF)RO                                         -0.764   0.4446    
as.factor(SG_UF)RR                                          0.936   0.3491    
as.factor(SG_UF)RS                                          1.064   0.2872    
as.factor(SG_UF)SC                                          0.221   0.8248    
as.factor(SG_UF)SE                                          0.207   0.8360    
as.factor(SG_UF)SP                                         -0.745   0.4563    
as.factor(SG_UF)TO                                         -0.265   0.7906    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

(Dispersion parameter for binomial family taken to be 1)

    Null deviance: 3983.8  on 9473  degrees of freedom
Residual deviance: 1860.3  on 9433  degrees of freedom
  (2 observations deleted due to missingness)
AIC: 1942.3

Number of Fisher Scoring iterations: 16

> 
> m_probit <- glm(
+   eleito ~ ln_gasto + idade + mulher +
+     preta + parda + amarela + indigena + cor_nao_informada +
+     as.factor(DS_GRAU_INSTRUCAO) + as.factor(SG_UF),
+   data = Base_Final,
+   family = binomial(link = "probit")
+ )
Warning message:
glm.fit: fitted probabilities numerically 0 or 1 occurred 
> summary(m_probit)

Call:
glm(formula = eleito ~ ln_gasto + idade + mulher + preta + parda + 
    amarela + indigena + cor_nao_informada + as.factor(DS_GRAU_INSTRUCAO) + 
    as.factor(SG_UF), family = binomial(link = "probit"), data = Base_Final)

Coefficients:
                                                            Estimate Std. Error
(Intercept)                                               -14.716292   0.697317
ln_gasto                                                    1.059892   0.043337
idade                                                      -0.011952   0.002884
mulher                                                     -0.535002   0.080555
preta                                                      -0.275643   0.134217
parda                                                      -0.117220   0.081911
amarela                                                     0.334611   0.492524
indigena                                                    0.595385   0.409493
cor_nao_informada                                           0.134435   0.739036
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO   0.160069   0.434324
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO COMPLETO        -0.398921   0.275467
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO INCOMPLETO      -0.124961   0.502509
as.factor(DS_GRAU_INSTRUCAO)Lï¿½ E ESCREVE                 -2.902636  72.083595
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO               0.031467   0.252063
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO             0.083549   0.275898
as.factor(SG_UF)AL                                         -0.345419   0.346792
as.factor(SG_UF)AM                                         -0.334280   0.355026
as.factor(SG_UF)AP                                         -0.069000   0.332848
as.factor(SG_UF)BA                                          0.182518   0.278254
as.factor(SG_UF)CE                                          0.127283   0.296865
as.factor(SG_UF)DF                                         -0.268464   0.343248
as.factor(SG_UF)ES                                         -0.331562   0.323634
as.factor(SG_UF)GO                                         -0.156861   0.298738
as.factor(SG_UF)MA                                         -0.073488   0.301657
as.factor(SG_UF)MG                                         -0.009235   0.270445
as.factor(SG_UF)MS                                         -0.107000   0.346804
as.factor(SG_UF)MT                                         -0.575738   0.341772
as.factor(SG_UF)PA                                          0.270232   0.301155
as.factor(SG_UF)PB                                         -0.021361   0.325069
as.factor(SG_UF)PE                                         -0.057403   0.294267
as.factor(SG_UF)PI                                         -0.169520   0.342354
as.factor(SG_UF)PR                                          0.058006   0.289409
as.factor(SG_UF)RJ                                          0.184910   0.271507
as.factor(SG_UF)RN                                         -0.202450   0.340794
as.factor(SG_UF)RO                                         -0.187059   0.335266
as.factor(SG_UF)RR                                          0.224716   0.338584
as.factor(SG_UF)RS                                          0.348097   0.289594
as.factor(SG_UF)SC                                          0.060313   0.307253
as.factor(SG_UF)SE                                          0.066929   0.357701
as.factor(SG_UF)SP                                         -0.175683   0.263929
as.factor(SG_UF)TO                                         -0.161445   0.334195
                                                          z value Pr(>|z|)    
(Intercept)                                               -21.104  < 2e-16 ***
ln_gasto                                                   24.457  < 2e-16 ***
idade                                                      -4.145 3.40e-05 ***
mulher                                                     -6.641 3.11e-11 ***
preta                                                      -2.054   0.0400 *  
parda                                                      -1.431   0.1524    
amarela                                                     0.679   0.4969    
indigena                                                    1.454   0.1460    
cor_nao_informada                                           0.182   0.8557    
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO   0.369   0.7125    
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO COMPLETO        -1.448   0.1476    
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO INCOMPLETO      -0.249   0.8036    
as.factor(DS_GRAU_INSTRUCAO)Lï¿½ E ESCREVE                 -0.040   0.9679    
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO               0.125   0.9007    
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO             0.303   0.7620    
as.factor(SG_UF)AL                                         -0.996   0.3192    
as.factor(SG_UF)AM                                         -0.942   0.3464    
as.factor(SG_UF)AP                                         -0.207   0.8358    
as.factor(SG_UF)BA                                          0.656   0.5119    
as.factor(SG_UF)CE                                          0.429   0.6681    
as.factor(SG_UF)DF                                         -0.782   0.4341    
as.factor(SG_UF)ES                                         -1.024   0.3056    
as.factor(SG_UF)GO                                         -0.525   0.5995    
as.factor(SG_UF)MA                                         -0.244   0.8075    
as.factor(SG_UF)MG                                         -0.034   0.9728    
as.factor(SG_UF)MS                                         -0.309   0.7577    
as.factor(SG_UF)MT                                         -1.685   0.0921 .  
as.factor(SG_UF)PA                                          0.897   0.3695    
as.factor(SG_UF)PB                                         -0.066   0.9476    
as.factor(SG_UF)PE                                         -0.195   0.8453    
as.factor(SG_UF)PI                                         -0.495   0.6205    
as.factor(SG_UF)PR                                          0.200   0.8411    
as.factor(SG_UF)RJ                                          0.681   0.4958    
as.factor(SG_UF)RN                                         -0.594   0.5525    
as.factor(SG_UF)RO                                         -0.558   0.5769    
as.factor(SG_UF)RR                                          0.664   0.5069    
as.factor(SG_UF)RS                                          1.202   0.2294    
as.factor(SG_UF)SC                                          0.196   0.8444    
as.factor(SG_UF)SE                                          0.187   0.8516    
as.factor(SG_UF)SP                                         -0.666   0.5056    
as.factor(SG_UF)TO                                         -0.483   0.6290    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

(Dispersion parameter for binomial family taken to be 1)

    Null deviance: 3983.8  on 9473  degrees of freedom
Residual deviance: 1867.8  on 9433  degrees of freedom
  (2 observations deleted due to missingness)
AIC: 1949.8

Number of Fisher Scoring iterations: 16

> 
> #Visualizações
> library(stargazer)

Please cite as: 

 Hlavac, Marek (2022). stargazer: Well-Formatted Regression and Summary Statistics Tables.
 R package version 5.2.3. https://CRAN.R-project.org/package=stargazer 

> library(sandwich)
> 
> stargazer(
+   Base_Final[, c("QT_VOTOS_NOMINAIS", "VR_DESPESA_CONTRATADA", "ln_votos", "$
+   type = "text"
+ )
Error in if (is.na(s)) { : the condition has length > 1
> 
> cor(Base_Final[, c("ln_votos", "ln_gasto", "idade", "mulher")], use = "compl$
            ln_votos   ln_gasto       idade      mulher
ln_votos  1.00000000 0.62567243  0.02692823 -0.19473026
ln_gasto  0.62567243 1.00000000  0.01011038  0.03268792
idade     0.02692823 0.01011038  1.00000000 -0.13004065
mulher   -0.19473026 0.03268792 -0.13004065  1.00000000
> 
> plot(fitted(m6), resid(m6), pch = 16, col = rgb(0, 0, 0, 0.15),
+      xlab = "valores ajustados de ln_votos", ylab = "residuos")
> abline(h = 0)
> 
> ep <- list(
+   sqrt(diag(vcovHC(m1, type = "HC1"))),
+   sqrt(diag(vcovHC(m3, type = "HC1"))),
+   sqrt(diag(vcovHC(m4, type = "HC1"))),
+   sqrt(diag(vcovHC(m6, type = "HC1")))
+ )
> 
> stargazer(
+   m1, m3, m4, m6,
+   type = "text",
+   se = ep,
+   omit = "SG_UF|SG_PARTIDO"
+ )

======================================================================================================================================================================
                                                                                                      Dependent variable:                                             
                                                          ------------------------------------------------------------------------------------------------------------
                                                                            QT_VOTOS_NOMINAIS                                          ln_votos                       
                                                                      (1)                        (2)                        (3)                        (4)            
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
VR_DESPESA_CONTRATADA                                              0.034***                   0.035***                                                                
                                                                    (0.001)                    (0.001)                                                                
                                                                                                                                                                      
idade                                                                                        -184.413***                                            -0.006***         
                                                                                              (42.279)                                               (0.001)          
                                                                                                                                                                      
mulher                                                                                      -4,065.977***                                           -0.865***         
                                                                                              (620.372)                                              (0.028)          
                                                                                                                                                                      
genero_nao_divulgavel                                                                                                                                                 
                                                                                                                                                                      
                                                                                                                                                                      
preta                                                                                       -2,471.642***                                           -0.375***         
                                                                                              (622.884)                                              (0.042)          
                                                                                                                                                                      
parda                                                                                       -1,906.054***                                           -0.309***         
                                                                                              (584.726)                                              (0.032)          
                                                                                                                                                                      
amarela                                                                                       6,296.840                                               0.201           
                                                                                             (6,590.602)                                             (0.225)          
                                                                                                                                                                      
indigena                                                                                      1,815.100                                               0.171           
                                                                                             (2,875.238)                                             (0.211)          
                                                                                                                                                                      
cor_nao_informada                                                                              289.124                                                0.146           
                                                                                             (1,688.217)                                             (0.216)          
                                                                                                                                                                      
cor_nao_divulgavel                                                                                                                                                    
                                                                                                                                                                      
                                                                                                                                                                      
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO                                     -400.827                                                0.010           
                                                                                              (967.171)                                              (0.120)          
                                                                                                                                                                      
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO COMPLETO                                           -952.250                                                0.067           
                                                                                              (704.289)                                              (0.076)          
                                                                                                                                                                      
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO INCOMPLETO                                         -371.395                                                -0.076          
                                                                                              (879.670)                                              (0.112)          
                                                                                                                                                                      
as.factor(DS_GRAU_INSTRUCAO)Lï¿½ E ESCREVE                                                     875.429                                                -0.198          
                                                                                              (921.214)                                              (0.158)          
                                                                                                                                                                      
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO                                                  195.269                                               0.546***         
                                                                                              (743.825)                                              (0.074)          
                                                                                                                                                                      
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO                                              -1,548.039                                              0.220***         
                                                                                              (991.006)                                              (0.085)          
                                                                                                                                                                      
ln_gasto                                                                                                                 0.323***                    0.265***         
                                                                                                                          (0.005)                    (0.005)          
                                                                                                                                                                      
Constant                                                           -121.068                   2,260.477                  3.956***                    3.304***         
                                                                   (259.558)                 (2,885.444)                  (0.054)                    (0.170)          
                                                                                                                                                                      
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
Observations                                                         9,476                      9,474                      9,476                      9,474           
R2                                                                   0.332                      0.381                      0.392                      0.563           
Adjusted R2                                                          0.332                      0.376                      0.392                      0.559           
Residual Std. Error                                         30,392.330 (df = 9474)     29,376.730 (df = 9402)        1.547 (df = 9474)          1.316 (df = 9402)     
F Statistic                                               4,715.175*** (df = 1; 9474) 81.456*** (df = 71; 9402) 6,097.945*** (df = 1; 9474) 170.427*** (df = 71; 9402)
======================================================================================================================================================================
Note:                                                                                                                                      *p<0.1; **p<0.05; ***p<0.01
> 
> plot(Base_Final$ln_gasto, Base_Final$ln_votos,
+      xlab = "ln(despesa + 1)", ylab = "ln(votos + 1)")
> 
> hist(Base_Final$ln_votos, breaks = 40, col = "grey80",
+      main = "Votos em log", xlab = "ln(votos + 1)", ylab = "Candidatos")
> hist(Base_Final$ln_gasto, breaks = 40, col = "grey80",
+      main = "Despesa em log", xlab = "ln(despesa + 1)", ylab = "Candidatos")
> 
> hist(Base_Final$QT_VOTOS_NOMINAIS, breaks = 50, main = "", xlab = "Votos nom$
> hist(Base_Final$VR_DESPESA_CONTRATADA, breaks = 50, main = "", xlab = "Despe$
> 
> #Testes de Hipótese
> library(AER)
Loading required package: car
Loading required package: carData
Loading required package: lmtest
Loading required package: zoo

Attaching package: 'zoo'

The following objects are masked from 'package:data.table':

    yearmon, yearqtr

The following objects are masked from 'package:base':

    as.Date, as.Date.numeric

Loading required package: survival
> 
> bptest(m3)

        studentized Breusch-Pagan test

data:  m3
BP = 113.77, df = 71, p-value = 0.0009613

> bptest(m6)

        studentized Breusch-Pagan test

data:  m6
BP = 199, df = 71, p-value = 4.507e-14

> coeftest(m6, vcov. = vcovHC, type = "HC1")

t test of coefficients:

                                                            Estimate Std. Error
(Intercept)                                                3.3039576  0.1695186
ln_gasto                                                   0.2648318  0.0053029
idade                                                     -0.0062727  0.0012851
mulher                                                    -0.8651141  0.0282263
preta                                                     -0.3745872  0.0416223
parda                                                     -0.3094414  0.0321396
amarela                                                    0.2006918  0.2254706
indigena                                                   0.1712819  0.2105036
cor_nao_informada                                          0.1458206  0.2162104
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO  0.0099882  0.1196112
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO COMPLETO        0.0666201  0.0760327
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO INCOMPLETO     -0.0761873  0.1116076
as.factor(DS_GRAU_INSTRUCAO)Lï¿½ E ESCREVE                -0.1976363  0.1581508
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO              0.5461282  0.0744012
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO            0.2198012  0.0846337
as.factor(SG_UF)AL                                         0.5004861  0.1578398
as.factor(SG_UF)AM                                         0.9271393  0.1541601
as.factor(SG_UF)AP                                         0.1034761  0.1615764
as.factor(SG_UF)BA                                         0.8361980  0.1255147
as.factor(SG_UF)CE                                         0.6582708  0.1374629
as.factor(SG_UF)DF                                         0.5929663  0.1443605
as.factor(SG_UF)ES                                         1.0333541  0.1481820
as.factor(SG_UF)GO                                         0.6540527  0.1339893
as.factor(SG_UF)MA                                         0.8658316  0.1374705
as.factor(SG_UF)MG                                         0.5858054  0.1214514
as.factor(SG_UF)MS                                         0.8061074  0.1450070
as.factor(SG_UF)MT                                         0.7998419  0.1508492
as.factor(SG_UF)PA                                         1.1123481  0.1401079
as.factor(SG_UF)PB                                         0.7073629  0.1436605
as.factor(SG_UF)PE                                         0.8859697  0.1307753
as.factor(SG_UF)PI                                         0.5635104  0.1492072
as.factor(SG_UF)PR                                         0.4154228  0.1256085
as.factor(SG_UF)RJ                                         0.8564580  0.1219998
as.factor(SG_UF)RN                                         0.7398463  0.1552798
as.factor(SG_UF)RO                                         0.4080282  0.1558036
as.factor(SG_UF)RR                                        -0.3399059  0.1642265
as.factor(SG_UF)RS                                         0.5401377  0.1293395
as.factor(SG_UF)SC                                         0.7597050  0.1364875
as.factor(SG_UF)SE                                         0.8103233  0.1510538
as.factor(SG_UF)SP                                         0.8667005  0.1201538
as.factor(SG_UF)TO                                         0.0691243  0.1620956
as.factor(SG_PARTIDO)AVANTE                                0.7656835  0.0960111
as.factor(SG_PARTIDO)CIDADANIA                             0.8180772  0.1295813
as.factor(SG_PARTIDO)DC                                    0.0511768  0.1205076
as.factor(SG_PARTIDO)MDB                                   1.2600007  0.0979779
as.factor(SG_PARTIDO)NOVO                                  0.9074823  0.1025178
as.factor(SG_PARTIDO)PATRIOTA                              0.2691549  0.0963659
as.factor(SG_PARTIDO)PC do B                               1.3996428  0.2160774
as.factor(SG_PARTIDO)PCB                                   1.0340810  0.2651388
as.factor(SG_PARTIDO)PCO                                   1.1821742  0.2161685
as.factor(SG_PARTIDO)PDT                                   0.8744450  0.0938630
as.factor(SG_PARTIDO)PL                                    2.1128421  0.0988879
as.factor(SG_PARTIDO)PMB                                   1.0788460  0.1183450
as.factor(SG_PARTIDO)PMN                                   0.1335800  0.1055101
as.factor(SG_PARTIDO)PODE                                  0.7675954  0.0921862
as.factor(SG_PARTIDO)PP                                    1.4707672  0.0967024
as.factor(SG_PARTIDO)PROS                                  0.4618488  0.1100697
as.factor(SG_PARTIDO)PRTB                                  0.6994326  0.1114797
as.factor(SG_PARTIDO)PSB                                   0.9039064  0.0965222
as.factor(SG_PARTIDO)PSC                                   0.5608130  0.0989589
as.factor(SG_PARTIDO)PSD                                   1.4821612  0.1054695
as.factor(SG_PARTIDO)PSDB                                  1.1114782  0.1077505
as.factor(SG_PARTIDO)PSOL                                  0.7716555  0.1121380
as.factor(SG_PARTIDO)PSTU                                  0.0391270  0.1769646
as.factor(SG_PARTIDO)PT                                    2.2646529  0.1031233
as.factor(SG_PARTIDO)PTB                                   0.5415347  0.0920922
as.factor(SG_PARTIDO)PV                                    0.8109267  0.1739760
as.factor(SG_PARTIDO)REDE                                  0.2555539  0.1220216
as.factor(SG_PARTIDO)REPUBLICANOS                          1.3719667  0.0960053
as.factor(SG_PARTIDO)SOLIDARIEDADE                         0.5660636  0.0970804
as.factor(SG_PARTIDO)UNIï¿½O                               1.5368853  0.0979978
as.factor(SG_PARTIDO)UP                                    2.3302889  0.3825432
                                                           t value  Pr(>|t|)
(Intercept)                                                19.4902 < 2.2e-16
ln_gasto                                                   49.9414 < 2.2e-16
idade                                                      -4.8812 1.072e-06
mulher                                                    -30.6492 < 2.2e-16
preta                                                      -8.9997 < 2.2e-16
parda                                                      -9.6280 < 2.2e-16
amarela                                                     0.8901 0.3734339
indigena                                                    0.8137 0.4158507
cor_nao_informada                                           0.6744 0.5000491
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO   0.0835 0.9334513
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO COMPLETO         0.8762 0.3809422
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO INCOMPLETO      -0.6826 0.4948538
as.factor(DS_GRAU_INSTRUCAO)Lï¿½ E ESCREVE                 -1.2497 0.2114512
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO               7.3403 2.308e-13
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO             2.5971 0.0094164
as.factor(SG_UF)AL                                          3.1708 0.0015248
as.factor(SG_UF)AM                                          6.0141 1.876e-09
as.factor(SG_UF)AP                                          0.6404 0.5219176
as.factor(SG_UF)BA                                          6.6622 2.850e-11
as.factor(SG_UF)CE                                          4.7887 1.704e-06
as.factor(SG_UF)DF                                          4.1075 4.033e-05
as.factor(SG_UF)ES                                          6.9735 3.299e-12
as.factor(SG_UF)GO                                          4.8814 1.071e-06
as.factor(SG_UF)MA                                          6.2983 3.144e-10
as.factor(SG_UF)MG                                          4.8234 1.434e-06
as.factor(SG_UF)MS                                          5.5591 2.786e-08
as.factor(SG_UF)MT                                          5.3023 1.170e-07
as.factor(SG_UF)PA                                          7.9392 2.268e-15
as.factor(SG_UF)PB                                          4.9239 8.630e-07
as.factor(SG_UF)PE                                          6.7747 1.321e-11
as.factor(SG_UF)PI                                          3.7767 0.0001599
as.factor(SG_UF)PR                                          3.3073 0.0009456
as.factor(SG_UF)RJ                                          7.0202 2.370e-12
as.factor(SG_UF)RN                                          4.7646 1.921e-06
as.factor(SG_UF)RO                                          2.6189 0.0088365
as.factor(SG_UF)RR                                         -2.0697 0.0385040
as.factor(SG_UF)RS                                          4.1761 2.992e-05
as.factor(SG_UF)SC                                          5.5661 2.676e-08
as.factor(SG_UF)SE                                          5.3645 8.312e-08
as.factor(SG_UF)SP                                          7.2133 5.885e-13
as.factor(SG_UF)TO                                          0.4264 0.6697958
as.factor(SG_PARTIDO)AVANTE                                 7.9749 1.702e-15
as.factor(SG_PARTIDO)CIDADANIA                              6.3132 2.856e-10
as.factor(SG_PARTIDO)DC                                     0.4247 0.6710820
as.factor(SG_PARTIDO)MDB                                   12.8600 < 2.2e-16
as.factor(SG_PARTIDO)NOVO                                   8.8519 < 2.2e-16
as.factor(SG_PARTIDO)PATRIOTA                               2.7931 0.0052319
as.factor(SG_PARTIDO)PC do B                                6.4775 9.792e-11
as.factor(SG_PARTIDO)PCB                                    3.9001 9.680e-05
as.factor(SG_PARTIDO)PCO                                    5.4688 4.648e-08
as.factor(SG_PARTIDO)PDT                                    9.3162 < 2.2e-16
as.factor(SG_PARTIDO)PL                                    21.3660 < 2.2e-16
as.factor(SG_PARTIDO)PMB                                    9.1161 < 2.2e-16
as.factor(SG_PARTIDO)PMN                                    1.2660 0.2055303
as.factor(SG_PARTIDO)PODE                                   8.3266 < 2.2e-16
as.factor(SG_PARTIDO)PP                                    15.2092 < 2.2e-16
as.factor(SG_PARTIDO)PROS                                   4.1960 2.742e-05
as.factor(SG_PARTIDO)PRTB                                   6.2741 3.672e-10
as.factor(SG_PARTIDO)PSB                                    9.3647 < 2.2e-16
as.factor(SG_PARTIDO)PSC                                    5.6671 1.495e-08
as.factor(SG_PARTIDO)PSD                                   14.0530 < 2.2e-16
as.factor(SG_PARTIDO)PSDB                                  10.3153 < 2.2e-16
as.factor(SG_PARTIDO)PSOL                                   6.8813 6.310e-12
as.factor(SG_PARTIDO)PSTU                                   0.2211 0.8250187
as.factor(SG_PARTIDO)PT                                    21.9606 < 2.2e-16
as.factor(SG_PARTIDO)PTB                                    5.8804 4.233e-09
as.factor(SG_PARTIDO)PV                                     4.6611 3.188e-06
as.factor(SG_PARTIDO)REDE                                   2.0943 0.0362570
as.factor(SG_PARTIDO)REPUBLICANOS                          14.2905 < 2.2e-16
as.factor(SG_PARTIDO)SOLIDARIEDADE                          5.8309 5.696e-09
as.factor(SG_PARTIDO)UNIï¿½O                               15.6829 < 2.2e-16
as.factor(SG_PARTIDO)UP                                     6.0916 1.162e-09
                                                             
(Intercept)                                               ***
ln_gasto                                                  ***
idade                                                     ***
mulher                                                    ***
preta                                                     ***
parda                                                     ***
amarela                                                      
indigena                                                     
cor_nao_informada                                            
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO    
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO COMPLETO          
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO INCOMPLETO        
as.factor(DS_GRAU_INSTRUCAO)Lï¿½ E ESCREVE                   
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO             ***
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO           ** 
as.factor(SG_UF)AL                                        ** 
as.factor(SG_UF)AM                                        ***
as.factor(SG_UF)AP                                           
as.factor(SG_UF)BA                                        ***
as.factor(SG_UF)CE                                        ***
as.factor(SG_UF)DF                                        ***
as.factor(SG_UF)ES                                        ***
as.factor(SG_UF)GO                                        ***
as.factor(SG_UF)MA                                        ***
as.factor(SG_UF)MG                                        ***
as.factor(SG_UF)MS                                        ***
as.factor(SG_UF)MT                                        ***
as.factor(SG_UF)PA                                        ***
as.factor(SG_UF)PB                                        ***
as.factor(SG_UF)PE                                        ***
as.factor(SG_UF)PI                                        ***
as.factor(SG_UF)PR                                        ***
as.factor(SG_UF)RJ                                        ***
as.factor(SG_UF)RN                                        ***
as.factor(SG_UF)RO                                        ** 
as.factor(SG_UF)RR                                        *  
as.factor(SG_UF)RS                                        ***
as.factor(SG_UF)SC                                        ***
as.factor(SG_UF)SE                                        ***
as.factor(SG_UF)SP                                        ***
as.factor(SG_UF)TO                                           
as.factor(SG_PARTIDO)AVANTE                               ***
as.factor(SG_PARTIDO)CIDADANIA                            ***
as.factor(SG_PARTIDO)DC                                      
as.factor(SG_PARTIDO)MDB                                  ***
as.factor(SG_PARTIDO)NOVO                                 ***
as.factor(SG_PARTIDO)PATRIOTA                             ** 
as.factor(SG_PARTIDO)PC do B                              ***
as.factor(SG_PARTIDO)PCB                                  ***
as.factor(SG_PARTIDO)PCO                                  ***
as.factor(SG_PARTIDO)PDT                                  ***
as.factor(SG_PARTIDO)PL                                   ***
as.factor(SG_PARTIDO)PMB                                  ***
as.factor(SG_PARTIDO)PMN                                     
as.factor(SG_PARTIDO)PODE                                 ***
as.factor(SG_PARTIDO)PP                                   ***
as.factor(SG_PARTIDO)PROS                                 ***
as.factor(SG_PARTIDO)PRTB                                 ***
as.factor(SG_PARTIDO)PSB                                  ***
as.factor(SG_PARTIDO)PSC                                  ***
as.factor(SG_PARTIDO)PSD                                  ***
as.factor(SG_PARTIDO)PSDB                                 ***
as.factor(SG_PARTIDO)PSOL                                 ***
as.factor(SG_PARTIDO)PSTU                                    
as.factor(SG_PARTIDO)PT                                   ***
as.factor(SG_PARTIDO)PTB                                  ***
as.factor(SG_PARTIDO)PV                                   ***
as.factor(SG_PARTIDO)REDE                                 *  
as.factor(SG_PARTIDO)REPUBLICANOS                         ***
as.factor(SG_PARTIDO)SOLIDARIEDADE                        ***
as.factor(SG_PARTIDO)UNIï¿½O                              ***
as.factor(SG_PARTIDO)UP                                   ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

> coeftest(m3, vcov. = vcovHC, type = "HC1")

t test of coefficients:

                                                             Estimate
(Intercept)                                                2.2605e+03
VR_DESPESA_CONTRATADA                                      3.4933e-02
idade                                                     -1.8441e+02
mulher                                                    -4.0660e+03
preta                                                     -2.4716e+03
parda                                                     -1.9061e+03
amarela                                                    6.2968e+03
indigena                                                   1.8151e+03
cor_nao_informada                                          2.8912e+02
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO -4.0083e+02
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO COMPLETO       -9.5225e+02
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO INCOMPLETO     -3.7139e+02
as.factor(DS_GRAU_INSTRUCAO)Lï¿½ E ESCREVE                 8.7543e+02
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO              1.9527e+02
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO           -1.5480e+03
as.factor(SG_UF)AL                                         5.3221e+03
as.factor(SG_UF)AM                                         7.0261e+03
as.factor(SG_UF)AP                                        -4.7123e+03
as.factor(SG_UF)BA                                         1.0856e+04
as.factor(SG_UF)CE                                         1.2922e+04
as.factor(SG_UF)DF                                         5.2305e+03
as.factor(SG_UF)ES                                         4.1851e+03
as.factor(SG_UF)GO                                         5.8196e+03
as.factor(SG_UF)MA                                         8.1350e+03
as.factor(SG_UF)MG                                         1.0106e+04
as.factor(SG_UF)MS                                         5.7038e+03
as.factor(SG_UF)MT                                         4.8383e+02
as.factor(SG_UF)PA                                         1.3870e+04
as.factor(SG_UF)PB                                         7.2123e+03
as.factor(SG_UF)PE                                         7.7303e+03
as.factor(SG_UF)PI                                         6.8811e+03
as.factor(SG_UF)PR                                         9.0382e+03
as.factor(SG_UF)RJ                                         8.9537e+03
as.factor(SG_UF)RN                                         6.5281e+03
as.factor(SG_UF)RO                                        -1.3391e+03
as.factor(SG_UF)RR                                         1.4941e+03
as.factor(SG_UF)RS                                         1.0615e+04
as.factor(SG_UF)SC                                         1.0641e+04
as.factor(SG_UF)SE                                         6.5181e+03
as.factor(SG_UF)SP                                         1.3219e+04
as.factor(SG_UF)TO                                        -1.4573e+03
as.factor(SG_PARTIDO)AVANTE                               -6.7510e+02
as.factor(SG_PARTIDO)CIDADANIA                            -8.9169e+02
as.factor(SG_PARTIDO)DC                                    2.7619e+03
as.factor(SG_PARTIDO)MDB                                  -1.4203e+02
as.factor(SG_PARTIDO)NOVO                                  1.7246e+02
as.factor(SG_PARTIDO)PATRIOTA                             -9.1451e+02
as.factor(SG_PARTIDO)PC do B                              -2.6262e+03
as.factor(SG_PARTIDO)PCB                                  -2.1196e+03
as.factor(SG_PARTIDO)PCO                                  -1.8731e+02
as.factor(SG_PARTIDO)PDT                                   2.4213e+03
as.factor(SG_PARTIDO)PL                                    2.1033e+04
as.factor(SG_PARTIDO)PMB                                   4.3451e+02
as.factor(SG_PARTIDO)PMN                                  -3.0606e+02
as.factor(SG_PARTIDO)PODE                                 -2.9489e+03
as.factor(SG_PARTIDO)PP                                   -3.4751e+03
as.factor(SG_PARTIDO)PROS                                 -1.9645e+03
as.factor(SG_PARTIDO)PRTB                                  1.2331e+03
as.factor(SG_PARTIDO)PSB                                  -3.1126e+03
as.factor(SG_PARTIDO)PSC                                  -5.3758e+02
as.factor(SG_PARTIDO)PSD                                   1.1673e+03
as.factor(SG_PARTIDO)PSDB                                 -5.7750e+03
as.factor(SG_PARTIDO)PSOL                                  6.8640e+03
as.factor(SG_PARTIDO)PSTU                                 -8.7239e+02
as.factor(SG_PARTIDO)PT                                    1.0851e+04
as.factor(SG_PARTIDO)PTB                                  -2.3047e+03
as.factor(SG_PARTIDO)PV                                    8.6935e+02
as.factor(SG_PARTIDO)REDE                                 -1.4298e+03
as.factor(SG_PARTIDO)REPUBLICANOS                         -1.8563e+02
as.factor(SG_PARTIDO)SOLIDARIEDADE                        -1.3522e+03
as.factor(SG_PARTIDO)UNIï¿½O                              -1.5222e+04
as.factor(SG_PARTIDO)UP                                    1.5681e+03
                                                           Std. Error t value
(Intercept)                                                2.8854e+03  0.7834
VR_DESPESA_CONTRATADA                                      1.3065e-03 26.7378
idade                                                      4.2279e+01 -4.3618
mulher                                                     6.2037e+02 -6.5541
preta                                                      6.2288e+02 -3.9681
parda                                                      5.8473e+02 -3.2597
amarela                                                    6.5906e+03  0.9554
indigena                                                   2.8752e+03  0.6313
cor_nao_informada                                          1.6882e+03  0.1713
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO  9.6717e+02 -0.4144
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO COMPLETO        7.0429e+02 -1.3521
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO INCOMPLETO      8.7967e+02 -0.4222
as.factor(DS_GRAU_INSTRUCAO)Lï¿½ E ESCREVE                 9.2121e+02  0.9503
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO              7.4383e+02  0.2625
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO            9.9101e+02 -1.5621
as.factor(SG_UF)AL                                         2.2408e+03  2.3751
as.factor(SG_UF)AM                                         2.9131e+03  2.4119
as.factor(SG_UF)AP                                         2.3631e+03 -1.9941
as.factor(SG_UF)BA                                         1.7482e+03  6.2101
as.factor(SG_UF)CE                                         2.1365e+03  6.0480
as.factor(SG_UF)DF                                         2.2035e+03  2.3737
as.factor(SG_UF)ES                                         1.8885e+03  2.2161
as.factor(SG_UF)GO                                         1.9277e+03  3.0190
as.factor(SG_UF)MA                                         1.8598e+03  4.3741
as.factor(SG_UF)MG                                         2.1536e+03  4.6925
as.factor(SG_UF)MS                                         2.0224e+03  2.8203
as.factor(SG_UF)MT                                         2.1794e+03  0.2220
as.factor(SG_UF)PA                                         2.2977e+03  6.0365
as.factor(SG_UF)PB                                         1.9537e+03  3.6915
as.factor(SG_UF)PE                                         1.8838e+03  4.1036
as.factor(SG_UF)PI                                         2.2580e+03  3.0474
as.factor(SG_UF)PR                                         1.7707e+03  5.1043
as.factor(SG_UF)RJ                                         1.7034e+03  5.2563
as.factor(SG_UF)RN                                         1.9880e+03  3.2837
as.factor(SG_UF)RO                                         2.1040e+03 -0.6364
as.factor(SG_UF)RR                                         1.8579e+03  0.8042
as.factor(SG_UF)RS                                         1.8800e+03  5.6464
as.factor(SG_UF)SC                                         2.0204e+03  5.2667
as.factor(SG_UF)SE                                         1.9976e+03  3.2630
as.factor(SG_UF)SP                                         2.0732e+03  6.3764
as.factor(SG_UF)TO                                         2.0467e+03 -0.7120
as.factor(SG_PARTIDO)AVANTE                                7.9872e+02 -0.8452
as.factor(SG_PARTIDO)CIDADANIA                             2.3529e+03 -0.3790
as.factor(SG_PARTIDO)DC                                    5.7726e+02  4.7844
as.factor(SG_PARTIDO)MDB                                   1.3475e+03 -0.1054
as.factor(SG_PARTIDO)NOVO                                  1.2777e+03  0.1350
as.factor(SG_PARTIDO)PATRIOTA                              5.6972e+02 -1.6052
as.factor(SG_PARTIDO)PC do B                               2.7458e+03 -0.9565
as.factor(SG_PARTIDO)PCB                                   1.4174e+03 -1.4954
as.factor(SG_PARTIDO)PCO                                   1.1156e+03 -0.1679
as.factor(SG_PARTIDO)PDT                                   8.1236e+02  2.9805
as.factor(SG_PARTIDO)PL                                    4.2084e+03  4.9977
as.factor(SG_PARTIDO)PMB                                   4.9949e+02  0.8699
as.factor(SG_PARTIDO)PMN                                   5.4130e+02 -0.5654
as.factor(SG_PARTIDO)PODE                                  7.7357e+02 -3.8121
as.factor(SG_PARTIDO)PP                                    1.3423e+03 -2.5889
as.factor(SG_PARTIDO)PROS                                  7.2643e+02 -2.7043
as.factor(SG_PARTIDO)PRTB                                  4.9854e+02  2.4733
as.factor(SG_PARTIDO)PSB                                   9.8173e+02 -3.1705
as.factor(SG_PARTIDO)PSC                                   6.4634e+02 -0.8317
as.factor(SG_PARTIDO)PSD                                   1.4080e+03  0.8291
as.factor(SG_PARTIDO)PSDB                                  1.1795e+03 -4.8963
as.factor(SG_PARTIDO)PSOL                                  3.2849e+03  2.0896
as.factor(SG_PARTIDO)PSTU                                  8.9675e+02 -0.9728
as.factor(SG_PARTIDO)PT                                    1.6465e+03  6.5907
as.factor(SG_PARTIDO)PTB                                   6.8244e+02 -3.3771
as.factor(SG_PARTIDO)PV                                    2.0527e+03  0.4235
as.factor(SG_PARTIDO)REDE                                  1.2541e+03 -1.1402
as.factor(SG_PARTIDO)REPUBLICANOS                          1.1133e+03 -0.1667
as.factor(SG_PARTIDO)SOLIDARIEDADE                         6.5058e+02 -2.0785
as.factor(SG_PARTIDO)UNIï¿½O                               1.6763e+03 -9.0807
as.factor(SG_PARTIDO)UP                                    1.4944e+03  1.0493
                                                           Pr(>|t|)    
(Intercept)                                               0.4334079    
VR_DESPESA_CONTRATADA                                     < 2.2e-16 ***
idade                                                     1.304e-05 ***
mulher                                                    5.892e-11 ***
preta                                                     7.300e-05 ***
parda                                                     0.0011191 ** 
amarela                                                   0.3393863    
indigena                                                  0.5278683    
cor_nao_informada                                         0.8640230    
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO 0.6785671    
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO COMPLETO       0.1763843    
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO INCOMPLETO     0.6728902    
as.factor(DS_GRAU_INSTRUCAO)Lï¿½ E ESCREVE                0.3419849    
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO             0.7929261    
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO           0.1183008    
as.factor(SG_UF)AL                                        0.0175631 *  
as.factor(SG_UF)AM                                        0.0158885 *  
as.factor(SG_UF)AP                                        0.0461732 *  
as.factor(SG_UF)BA                                        5.520e-10 ***
as.factor(SG_UF)CE                                        1.523e-09 ***
as.factor(SG_UF)DF                                        0.0176314 *  
as.factor(SG_UF)ES                                        0.0267069 *  
as.factor(SG_UF)GO                                        0.0025433 ** 
as.factor(SG_UF)MA                                        1.232e-05 ***
as.factor(SG_UF)MG                                        2.737e-06 ***
as.factor(SG_UF)MS                                        0.0048074 ** 
as.factor(SG_UF)MT                                        0.8243205    
as.factor(SG_UF)PA                                        1.635e-09 ***
as.factor(SG_UF)PB                                        0.0002242 ***
as.factor(SG_UF)PE                                        4.103e-05 ***
as.factor(SG_UF)PI                                        0.0023143 ** 
as.factor(SG_UF)PR                                        3.384e-07 ***
as.factor(SG_UF)RJ                                        1.502e-07 ***
as.factor(SG_UF)RN                                        0.0010282 ** 
as.factor(SG_UF)RO                                        0.5245038    
as.factor(SG_UF)RR                                        0.4213147    
as.factor(SG_UF)RS                                        1.686e-08 ***
as.factor(SG_UF)SC                                        1.419e-07 ***
as.factor(SG_UF)SE                                        0.0011064 ** 
as.factor(SG_UF)SP                                        1.899e-10 ***
as.factor(SG_UF)TO                                        0.4764730    
as.factor(SG_PARTIDO)AVANTE                               0.3980022    
as.factor(SG_PARTIDO)CIDADANIA                            0.7047112    
as.factor(SG_PARTIDO)DC                                   1.741e-06 ***
as.factor(SG_PARTIDO)MDB                                  0.9160569    
as.factor(SG_PARTIDO)NOVO                                 0.8926290    
as.factor(SG_PARTIDO)PATRIOTA                             0.1084847    
as.factor(SG_PARTIDO)PC do B                              0.3388663    
as.factor(SG_PARTIDO)PCB                                  0.1348361    
as.factor(SG_PARTIDO)PCO                                  0.8666591    
as.factor(SG_PARTIDO)PDT                                  0.0028849 ** 
as.factor(SG_PARTIDO)PL                                   5.905e-07 ***
as.factor(SG_PARTIDO)PMB                                  0.3843809    
as.factor(SG_PARTIDO)PMN                                  0.5717993    
as.factor(SG_PARTIDO)PODE                                 0.0001387 ***
as.factor(SG_PARTIDO)PP                                   0.0096435 ** 
as.factor(SG_PARTIDO)PROS                                 0.0068569 ** 
as.factor(SG_PARTIDO)PRTB                                 0.0134030 *  
as.factor(SG_PARTIDO)PSB                                  0.0015266 ** 
as.factor(SG_PARTIDO)PSC                                  0.4055816    
as.factor(SG_PARTIDO)PSD                                  0.4070819    
as.factor(SG_PARTIDO)PSDB                                 9.928e-07 ***
as.factor(SG_PARTIDO)PSOL                                 0.0366850 *  
as.factor(SG_PARTIDO)PSTU                                 0.3306575    
as.factor(SG_PARTIDO)PT                                   4.612e-11 ***
as.factor(SG_PARTIDO)PTB                                  0.0007355 ***
as.factor(SG_PARTIDO)PV                                   0.6719286    
as.factor(SG_PARTIDO)REDE                                 0.2542500    
as.factor(SG_PARTIDO)REPUBLICANOS                         0.8675767    
as.factor(SG_PARTIDO)SOLIDARIEDADE                        0.0376891 *  
as.factor(SG_PARTIDO)UNIï¿½O                              < 2.2e-16 ***
as.factor(SG_PARTIDO)UP                                   0.2940446    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

---

**Cursor**

Subetapa 5.3 — papel: tutora. Três coisas da saída têm causa visível. A leitura do que cada coeficiente significa continua com vocês.

O `coeftest` do modelo linear de `eleito` falhou com `could not find function "coeftest"`. Essa função chega com `library(AER)`, e no script essa linha está depois de `m_lpm`. No console, o modelo foi criado antes de carregar o pacote. O `m_lpm` existe. A tabela com `HC1` dele não foi impressa.

Logit e probit rodaram e avisaram: `fitted probabilities numerically 0 or 1 occurred`. Alguma linha ficou com probabilidade colada em 0 ou em 1. O sintoma está na categoria “lê e escreve”: o erro-padrão vai a 330 no logit e a 72 no probit. O número ao lado de `ln_gasto` nesse `summary` não é a variação da probabilidade.

O `stargazer` da base quebrou com `the condition has length > 1`. O `stargazer` dos modelos `m1`, `m3`, `m4` e `m6` saiu. As colunas (1) e (2) são votos e despesa em nível. As colunas (3) e (4) são os logs. `m3` e `m6` têm 9.474 linhas. `m1` e `m4` têm 9.476. UF e partido não aparecem na tabela e continuam dentro de (2) e (4).

1. Depois de `library(AER)`, o `coeftest(m_lpm, vcov. = vcovHC, type = "HC1")` imprime?
2. O que vocês fazem com o coeficiente de “lê e escreve”, cujo erro-padrão ficou enorme?
3. Na tabela das quatro colunas, quais duas entram no relatório?

---

**User**

eu dei uma leve arrumada, eu gostaria de fazer um teste f par cada um dos grupos de dummies que temos, alé, disso o que acha de usar vif para fazer um teste de multicolinearidade

---

**Cursor**

Subetapa 9.1 — papel: mentora. Vou ler a arrumação do script e, em seguida, comentar o teste F por grupo e o VIF, sem escolher os testes por vocês.

Subetapa 9.1 — papel: mentora. A arrumação no começo do script resolve o erro do `coeftest`: `library(AER)`, `stargazer` e `sandwich` estão nas linhas 3 a 5, antes de `m_lpm`. `cor_nao_divulgavel` voltou a ser criada, pelo final `VEL`. `genero_nao_divulgavel` ficou definido uma vez só.

O teste F de um grupo pergunta se aqueles coeficientes são todos zero ao mesmo tempo. Um coeficiente isolado não responde isso. Com dados fictícios, a função do pacote `car`, que o `AER` já carrega, é:

```r
linearHypothesis(modelo, c("dummy_a", "dummy_b"))
```

Para um fator inteiro, a hipótese usa o nome que aparece no `summary`, não o nome da coluna solta.

O VIF responde outra coisa: o quanto uma variável é combinação linear das outras. O R ter rodado só diz que não houve colinearidade perfeita nos coeficientes que saíram com número. `genero_nao_divulgavel` e `cor_nao_divulgavel` continuam `NA` nas regressões com `idade`, porque nas 9.474 linhas elas são sempre zero. O `vif` nesse modelo pode parar por causa dessas duas colunas.

```r
vif(modelo)
```

Com fator, a saída é o GVIF, não o VIF de uma dummy isolada.

1. O teste F é em `m3`, em `m6`, ou nos dois?
2. Quais grupos entram: gênero, cor, instrução, UF e partido, ou só alguns?
3. O `vif` fica no modelo sem as duas dummies que são `NA`, ou em `m3` e `m6` como estão?

---

**User**

veja agora o código como esta e me diga se acha que está tudo certo, em minha visão conseguimos colocar tudo que queríamos

---

**Cursor**

Subetapa 5.3 — papel: tutora. Vou ler o script inteiro e conferir se ele faz o que vocês foram fechando, sem reescrever as linhas.

Subetapa 5.3 — papel: tutora. O script cobre a base, as duas escalas, os controles, o eleito como modelo extra, as tabelas, os gráficos, o Breusch-Pagan, o `HC1`, os testes F e o VIF. Não está tudo alinhado com o que esses comandos devolvem.

O filtro `CD_SITUACAO_CANDIDATURA == 12` é o mesmo apto de antes. No arquivo, o código 12 é `APTO` e, entre os deputados federais, são 9.476 linhas. `eleito` continua com suplente em 0. As regressões de votos não foram substituídas.

O que ainda destoa:

- O `write.csv` está na linha 36, antes de log, dummies, idade e `eleito`. O CSV em disco não leva essas colunas.
- Logit e probit não têm `SG_PARTIDO`. O modelo linear de `eleito` tem.
- O teste chamado de gênero é só `linearHypothesis(m6, "mulher")`. Isso é um coeficiente, não o grupo. `genero_nao_divulgavel` fica de fora, e nas regressões com idade ele é `NA`.
- O teste de cor deixa `cor_nao_divulgavel` de fora, pelo mesmo motivo. Instrução, UF e partido entram pelo `matchCoefs`, com a covariância `HC1` de `m6`. Não há o mesmo bloco para `m3`.
- As linhas 127 e 128 calculam, para `ln_gasto`, a média da densidade vezes o coeficiente. Isso é uma conta de efeito marginal. Não é o número do `summary`, e não é a variação da probabilidade lida direto dali. O aviso de probabilidade 0 ou 1 continua possível por causa de “lê e escreve”.
- Os histogramas em nível cortam em 50 mil votos e 500 mil reais. A cauda que justificou o log não aparece nesses dois gráficos.

1. Partido de fora do logit e do probit continua de propósito?
2. O teste de gênero fica só em `mulher`, ou o grupo inclui `genero_nao_divulgavel` numa regressão sem `idade`?

---

**User**

eu fiz várias alterações aqui com minha dupla, veja o que voce acha dessas alterações e me informe se gostou delas ou foram muito a mais

---

**Cursor**

Subetapa 5.3 — papel: mentora. Vou ler o script que vocês salvaram e comentar o que mudou em relação ao que já estava fechado.

Subetapa 6.3 — papel: mentora. A arrumação deixa a base, os logs e as dummies prontos antes do `write.csv`, e todas as regressões de votos usam `base_reg`. Isso iguala a amostra. Logit, probit e o modelo linear de `eleito` também ficaram sem partido, os três do mesmo jeito.

Duas mudanças passam do que já estava fechado.

`incumb` vale 1 quando `DS_OCUPACAO` é exatamente `DEPUTADA/DEPUTADO`. Nos 9.476 aptos, essa frase aparece 415 vezes. Outras 5 ocupações trazem a palavra deputado num texto maior, `SENADOR, DEPUTADO E VEREADOR`, e ficam 0. A coluna é a ocupação declarada, não o resultado de uma eleição anterior. Vocês tinham deixado o mandato passado como falta de dado. Agora ele volta como essa ocupação.

`m7` e os dois `linearHypothesis` de `ln_gasto:incumb` perguntam se a ligação entre log do gasto e log dos votos é diferente para quem tem essa ocupação. Isso é uma regressão a mais, com uma pergunta própria. As tabelas separadas, em log e em nível, e as médias por `eleito`, `mulher` e `incumb` organizam o que já existia.

`base_reg` tira as duas pessoas sem data de todas as regressões, inclusive de `m1` e `m4`, que não usam idade. Com elas fora, `genero_nao_divulgavel` e `cor_nao_divulgavel` continuam sempre 0, e o coeficiente delas segue `NA`.

1. `incumb` entra no lugar da limitação do mandato anterior, ou a limitação continua porque a coluna é ocupação?
2. `m7` fica no relatório como pergunta separada, ou a comparação principal continua `m4` com `m6` e `m1` com `m3`?

---

**User**

é porque nós pensamos que essa proxy pode ser mais positiva, ainda vamos comentar essa incapassibilidade,  mas vamos manter esse proxy

---

**Cursor**

Subetapa 10.3 — papel: mentora. Manter `incumb` e ainda escrever a limitação é compatível. A variável fica na regressão. O texto diz o que ela não mede.

`incumb` vale 1 para quem declarou a ocupação `DEPUTADA/DEPUTADO`, 415 aptos. Não vale 1 para quem foi deputado e declarou outra ocupação, nem distingue sozinha uma eleição anterior. As 5 ocupações com “deputado” no meio do texto ficam 0.

“Mais positiva” ainda está solta. Pode ser a expectativa de que esse grupo tenha mais votos e mais gasto, ou a decisão de preferir a proxy a deixar a coluna de fora.

1. Qual das duas é a frase de vocês?
2. Escrevam a limitação em uma frase: o que `DS_OCUPACAO` deixa de captar sobre o mandato anterior?

---

**User**

a segunda

---

**Cursor**

Subetapa 10.3 — papel: mentora. A frase que você escolheu é a segunda: `incumb` fica porque vocês preferem essa proxy a deixar a coluna de fora. Não é, por enquanto, a expectativa de que esse grupo tenha mais votos e mais gasto.

A limitação ainda não está escrita. Ela precisa dizer, com as palavras de vocês, o que `DS_OCUPACAO` não mede sobre ter sido deputado antes de 2022.

Escrevam essa frase.

---

**User**

considere que esses foram alfuns dos resultados indigena                                                                                      2,554.742                  2,126.714        
                                                                                             (3,519.993)                (3,112.724)       
                                                                                                                                          
cor_nao_informada                                                                            -3,313.898*                 -500.951         
                                                                                             (1,998.873)                (2,012.106)       
                                                                                                                                          
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO                                       63.824                   -195.075         
                                                                                              (922.597)                 (1,001.011)       
                                                                                                                                          
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO COMPLETO                                            -915.844                  -496.887         
                                                                                              (726.971)                  (710.314)        
                                                                                                                                          
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO INCOMPLETO                                          -360.873                   162.543         
                                                                                              (796.427)                  (873.822)        
                                                                                                                                          
as.factor(DS_GRAU_INSTRUCAO)Lï¿½ E ESCREVE                                                     870.370                   1,299.163        
                                                                                              (852.664)                  (887.478)        
                                                                                                                                          
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO                                                  896.870                    842.570         
                                                                                              (759.575)                  (755.089)        
                                                                                                                                          
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO                                                -397.130                  -908.797         
                                                                                              (995.927)                  (983.510)        
                                                                                                                                          
Constant                                                           -120.639                 10,863.900***                1,462.003        
                                                                   (259.552)                 (2,506.677)                (2,924.777)       
                                                                                                                                          
------------------------------------------------------------------------------------------------------------------------------------------
Observations                                                         9,474                      9,474                      9,474          
R2                                                                   0.332                      0.370                      0.403          
Adjusted R2                                                          0.332                      0.369                      0.399          
Residual Std. Error                                         30,394.250 (df = 9472)      29,539.740 (df = 9458)    28,845.520 (df = 9401)  
F Statistic                                               4,713.671*** (df = 1; 9472) 370.684*** (df = 15; 9458) 88.178*** (df = 72; 9401)
==========================================================================================================================================
Note:                                                                                                          *p<0.1; **p<0.05; ***p<0.01
> 
> plot(base_reg$ln_gasto, base_reg$ln_votos,
+      xlab = "ln(despesa + 1)", ylab = "ln(votos + 1)",
+      pch = 16, col = rgb(0, 0, 0, 0.2),
+      main = "Votos e despesa, em log")
> abline(m4)
> 
> hist(Base_Final$ln_votos, breaks = 40, col = "grey80", border = "white",
+      main = "ln(votos + 1)", xlab = "ln(votos + 1)", ylab = "Candidatos")
> 
> hist(Base_Final$ln_gasto, breaks = 40, col = "grey80", border = "white",
+      main = "ln(despesa + 1)", xlab = "ln(despesa + 1)", ylab = "Candidatos")
> 
> hist(Base_Final$QT_VOTOS_NOMINAIS[Base_Final$QT_VOTOS_NOMINAIS <= 50000],
+      breaks = 40, col = "grey80", border = "white",
+      main = "Votos nominais ate 50 mil", xlab = "Votos nominais", ylab = "Ca$
> 
> hist(Base_Final$VR_DESPESA_CONTRATADA[Base_Final$VR_DESPESA_CONTRATADA <= 50$
+      breaks = 40, col = "grey80", border = "white",
+      main = "Despesa contratada ate 500 mil", xlab = "Reais", ylab = "Candid$
> 
> plot(fitted(m6), resid(m6), pch = 16, col = rgb(0, 0, 0, 0.15),
+      xlab = "valores ajustados de ln_votos", ylab = "residuos",
+      main = "Residuos do m6")
> abline(h = 0)
> #Testes de Hipótese
> 
> bptest(m3)

        studentized Breusch-Pagan test

data:  m3
BP = 109.11, df = 72, p-value = 0.003137

> bptest(m6)

        studentized Breusch-Pagan test

data:  m6
BP = 198.89, df = 72, p-value = 7.905e-14

> coeftest(m6, vcov. = vcovHC, type = "HC1")

t test of coefficients:

                                                            Estimate Std. Error
(Intercept)                                                3.3960428  0.1629361
ln_gasto                                                   0.2392781  0.0050992
idade                                                     -0.0072235  0.0012283
incumb                                                     2.1731001  0.0529254
mulher                                                    -0.7796889  0.0270499
preta                                                     -0.3141012  0.0394801
parda                                                     -0.2522431  0.0306540
amarela                                                    0.2178521  0.2275644
indigena                                                   0.2127165  0.1989954
cor_nao_informada                                          0.0857805  0.2140780
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO  0.0432208  0.1143940
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO COMPLETO        0.1130718  0.0720553
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO INCOMPLETO     -0.0023302  0.1062160
as.factor(DS_GRAU_INSTRUCAO)Lï¿½ E ESCREVE                -0.1539004  0.1553165
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO              0.5673965  0.0702324
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO            0.2654204  0.0802430
as.factor(SG_UF)AL                                         0.5255841  0.1541582
as.factor(SG_UF)AM                                         0.9142488  0.1460908
as.factor(SG_UF)AP                                         0.0811180  0.1582811
as.factor(SG_UF)BA                                         0.8226339  0.1205990
as.factor(SG_UF)CE                                         0.6843039  0.1323937
as.factor(SG_UF)DF                                         0.6598162  0.1381684
as.factor(SG_UF)ES                                         1.1044701  0.1443984
as.factor(SG_UF)GO                                         0.7012546  0.1288256
as.factor(SG_UF)MA                                         0.8950562  0.1324308
as.factor(SG_UF)MG                                         0.6383226  0.1176370
as.factor(SG_UF)MS                                         0.9259383  0.1431149
as.factor(SG_UF)MT                                         0.8485162  0.1445613
as.factor(SG_UF)PA                                         1.0803047  0.1330038
as.factor(SG_UF)PB                                         0.7011383  0.1365373
as.factor(SG_UF)PE                                         0.8735306  0.1249929
as.factor(SG_UF)PI                                         0.5896982  0.1446169
as.factor(SG_UF)PR                                         0.4975737  0.1213940
as.factor(SG_UF)RJ                                         0.8912628  0.1181533
as.factor(SG_UF)RN                                         0.8024186  0.1516103
as.factor(SG_UF)RO                                         0.4542982  0.1515039
as.factor(SG_UF)RR                                        -0.3094826  0.1605894
as.factor(SG_UF)RS                                         0.6237616  0.1251850
as.factor(SG_UF)SC                                         0.8391904  0.1327208
as.factor(SG_UF)SE                                         0.8095747  0.1467210
as.factor(SG_UF)SP                                         0.9093119  0.1163463
as.factor(SG_UF)TO                                         0.0760093  0.1519015
as.factor(SG_PARTIDO)AVANTE                                0.8268914  0.0919900
as.factor(SG_PARTIDO)CIDADANIA                             0.8501545  0.1227146
as.factor(SG_PARTIDO)DC                                    0.0200048  0.1147254
as.factor(SG_PARTIDO)MDB                                   1.2676152  0.0932942
as.factor(SG_PARTIDO)NOVO                                  0.9413678  0.0993095
as.factor(SG_PARTIDO)PATRIOTA                              0.3300301  0.0926664
as.factor(SG_PARTIDO)PC do B                               1.2748334  0.1905062
as.factor(SG_PARTIDO)PCB                                   1.0518100  0.2531813
as.factor(SG_PARTIDO)PCO                                   0.9815731  0.2102175
as.factor(SG_PARTIDO)PDT                                   0.9352385  0.0902840
as.factor(SG_PARTIDO)PL                                    1.9381333  0.0933933
as.factor(SG_PARTIDO)PMB                                   0.9871580  0.1129143
as.factor(SG_PARTIDO)PMN                                   0.1628217  0.1014780
as.factor(SG_PARTIDO)PODE                                  0.8364673  0.0887988
as.factor(SG_PARTIDO)PP                                    1.4196365  0.0910992
as.factor(SG_PARTIDO)PROS                                  0.4583994  0.1060611
as.factor(SG_PARTIDO)PRTB                                  0.6557501  0.1077151
as.factor(SG_PARTIDO)PSB                                   0.8968784  0.0909868
as.factor(SG_PARTIDO)PSC                                   0.5941896  0.0948425
as.factor(SG_PARTIDO)PSD                                   1.3731637  0.0987335
as.factor(SG_PARTIDO)PSDB                                  1.1199535  0.1037680
as.factor(SG_PARTIDO)PSOL                                  0.8123570  0.1074026
as.factor(SG_PARTIDO)PSTU                                  0.0567563  0.1689433
as.factor(SG_PARTIDO)PT                                    2.1348507  0.0963590
as.factor(SG_PARTIDO)PTB                                   0.6007524  0.0889614
as.factor(SG_PARTIDO)PV                                    0.8588872  0.1650538
as.factor(SG_PARTIDO)REDE                                  0.3234108  0.1182356
as.factor(SG_PARTIDO)REPUBLICANOS                          1.3471078  0.0904500
as.factor(SG_PARTIDO)SOLIDARIEDADE                         0.6178668  0.0938357
as.factor(SG_PARTIDO)UNIï¿½O                               1.5341957  0.0937561
as.factor(SG_PARTIDO)UP                                    2.2849071  0.3618333
                                                           t value  Pr(>|t|)
(Intercept)                                                20.8428 < 2.2e-16
ln_gasto                                                   46.9248 < 2.2e-16
idade                                                      -5.8809 4.220e-09
incumb                                                     41.0597 < 2.2e-16
mulher                                                    -28.8240 < 2.2e-16
preta                                                      -7.9559 1.983e-15
parda                                                      -8.2287 < 2.2e-16
amarela                                                     0.9573 0.3384302
indigena                                                    1.0690 0.2851188
cor_nao_informada                                           0.4007 0.6886520
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO   0.3778 0.7055696
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO COMPLETO         1.5692 0.1166266
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO INCOMPLETO      -0.0219 0.9824974
as.factor(DS_GRAU_INSTRUCAO)Lï¿½ E ESCREVE                 -0.9909 0.3217684
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO               8.0788 7.344e-16
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO             3.3077 0.0009442
as.factor(SG_UF)AL                                          3.4094 0.0006538
as.factor(SG_UF)AM                                          6.2581 4.067e-10
as.factor(SG_UF)AP                                          0.5125 0.6083179
as.factor(SG_UF)BA                                          6.8212 9.583e-12
as.factor(SG_UF)CE                                          5.1687 2.406e-07
as.factor(SG_UF)DF                                          4.7754 1.820e-06
as.factor(SG_UF)ES                                          7.6488 2.228e-14
as.factor(SG_UF)GO                                          5.4434 5.358e-08
as.factor(SG_UF)MA                                          6.7587 1.475e-11
as.factor(SG_UF)MG                                          5.4262 5.900e-08
as.factor(SG_UF)MS                                          6.4699 1.030e-10
as.factor(SG_UF)MT                                          5.8696 4.517e-09
as.factor(SG_UF)PA                                          8.1224 5.148e-16
as.factor(SG_UF)PB                                          5.1351 2.876e-07
as.factor(SG_UF)PE                                          6.9886 2.964e-12
as.factor(SG_UF)PI                                          4.0777 4.587e-05
as.factor(SG_UF)PR                                          4.0988 4.187e-05
as.factor(SG_UF)RJ                                          7.5433 5.009e-14
as.factor(SG_UF)RN                                          5.2926 1.233e-07
as.factor(SG_UF)RO                                          2.9986 0.0027194
as.factor(SG_UF)RR                                         -1.9272 0.0539890
as.factor(SG_UF)RS                                          4.9827 6.381e-07
as.factor(SG_UF)SC                                          6.3230 2.682e-10
as.factor(SG_UF)SE                                          5.5178 3.524e-08
as.factor(SG_UF)SP                                          7.8156 6.059e-15
as.factor(SG_UF)TO                                          0.5004 0.6168154
as.factor(SG_PARTIDO)AVANTE                                 8.9889 < 2.2e-16
as.factor(SG_PARTIDO)CIDADANIA                              6.9279 4.552e-12
as.factor(SG_PARTIDO)DC                                     0.1744 0.8615777
as.factor(SG_PARTIDO)MDB                                   13.5873 < 2.2e-16
as.factor(SG_PARTIDO)NOVO                                   9.4791 < 2.2e-16
as.factor(SG_PARTIDO)PATRIOTA                               3.5615 0.0003706
as.factor(SG_PARTIDO)PC do B                                6.6918 2.330e-11
as.factor(SG_PARTIDO)PCB                                    4.1544 3.291e-05
as.factor(SG_PARTIDO)PCO                                    4.6693 3.064e-06
as.factor(SG_PARTIDO)PDT                                   10.3589 < 2.2e-16
as.factor(SG_PARTIDO)PL                                    20.7524 < 2.2e-16
as.factor(SG_PARTIDO)PMB                                    8.7425 < 2.2e-16
as.factor(SG_PARTIDO)PMN                                    1.6045 0.1086372
as.factor(SG_PARTIDO)PODE                                   9.4198 < 2.2e-16
as.factor(SG_PARTIDO)PP                                    15.5834 < 2.2e-16
as.factor(SG_PARTIDO)PROS                                   4.3220 1.562e-05
as.factor(SG_PARTIDO)PRTB                                   6.0878 1.189e-09
as.factor(SG_PARTIDO)PSB                                    9.8572 < 2.2e-16
as.factor(SG_PARTIDO)PSC                                    6.2650 3.891e-10
as.factor(SG_PARTIDO)PSD                                   13.9078 < 2.2e-16
as.factor(SG_PARTIDO)PSDB                                  10.7929 < 2.2e-16
as.factor(SG_PARTIDO)PSOL                                   7.5637 4.286e-14
as.factor(SG_PARTIDO)PSTU                                   0.3359 0.7369170
as.factor(SG_PARTIDO)PT                                    22.1552 < 2.2e-16
as.factor(SG_PARTIDO)PTB                                    6.7530 1.534e-11
as.factor(SG_PARTIDO)PV                                     5.2037 1.995e-07
as.factor(SG_PARTIDO)REDE                                   2.7353 0.0062439
as.factor(SG_PARTIDO)REPUBLICANOS                          14.8934 < 2.2e-16
as.factor(SG_PARTIDO)SOLIDARIEDADE                          6.5846 4.806e-11
as.factor(SG_PARTIDO)UNIï¿½O                               16.3637 < 2.2e-16
as.factor(SG_PARTIDO)UP                                     6.3148 2.827e-10
                                                             
(Intercept)                                               ***
ln_gasto                                                  ***
idade                                                     ***
incumb                                                    ***
mulher                                                    ***
preta                                                     ***
parda                                                     ***
amarela                                                      
indigena                                                     
cor_nao_informada                                            
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO    
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO COMPLETO          
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO INCOMPLETO        
as.factor(DS_GRAU_INSTRUCAO)Lï¿½ E ESCREVE                   
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO             ***
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO           ***
as.factor(SG_UF)AL                                        ***
as.factor(SG_UF)AM                                        ***
as.factor(SG_UF)AP                                           
as.factor(SG_UF)BA                                        ***
as.factor(SG_UF)CE                                        ***
as.factor(SG_UF)DF                                        ***
as.factor(SG_UF)ES                                        ***
as.factor(SG_UF)GO                                        ***
as.factor(SG_UF)MA                                        ***
as.factor(SG_UF)MG                                        ***
as.factor(SG_UF)MS                                        ***
as.factor(SG_UF)MT                                        ***
as.factor(SG_UF)PA                                        ***
as.factor(SG_UF)PB                                        ***
as.factor(SG_UF)PE                                        ***
as.factor(SG_UF)PI                                        ***
as.factor(SG_UF)PR                                        ***
as.factor(SG_UF)RJ                                        ***
as.factor(SG_UF)RN                                        ***
as.factor(SG_UF)RO                                        ** 
as.factor(SG_UF)RR                                        .  
as.factor(SG_UF)RS                                        ***
as.factor(SG_UF)SC                                        ***
as.factor(SG_UF)SE                                        ***
as.factor(SG_UF)SP                                        ***
as.factor(SG_UF)TO                                           
as.factor(SG_PARTIDO)AVANTE                               ***
as.factor(SG_PARTIDO)CIDADANIA                            ***
as.factor(SG_PARTIDO)DC                                      
as.factor(SG_PARTIDO)MDB                                  ***
as.factor(SG_PARTIDO)NOVO                                 ***
as.factor(SG_PARTIDO)PATRIOTA                             ***
as.factor(SG_PARTIDO)PC do B                              ***
as.factor(SG_PARTIDO)PCB                                  ***
as.factor(SG_PARTIDO)PCO                                  ***
as.factor(SG_PARTIDO)PDT                                  ***
as.factor(SG_PARTIDO)PL                                   ***
as.factor(SG_PARTIDO)PMB                                  ***
as.factor(SG_PARTIDO)PMN                                     
as.factor(SG_PARTIDO)PODE                                 ***
as.factor(SG_PARTIDO)PP                                   ***
as.factor(SG_PARTIDO)PROS                                 ***
as.factor(SG_PARTIDO)PRTB                                 ***
as.factor(SG_PARTIDO)PSB                                  ***
as.factor(SG_PARTIDO)PSC                                  ***
as.factor(SG_PARTIDO)PSD                                  ***
as.factor(SG_PARTIDO)PSDB                                 ***
as.factor(SG_PARTIDO)PSOL                                 ***
as.factor(SG_PARTIDO)PSTU                                    
as.factor(SG_PARTIDO)PT                                   ***
as.factor(SG_PARTIDO)PTB                                  ***
as.factor(SG_PARTIDO)PV                                   ***
as.factor(SG_PARTIDO)REDE                                 ** 
as.factor(SG_PARTIDO)REPUBLICANOS                         ***
as.factor(SG_PARTIDO)SOLIDARIEDADE                        ***
as.factor(SG_PARTIDO)UNIï¿½O                              ***
as.factor(SG_PARTIDO)UP                                   ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

> coeftest(m3, vcov. = vcovHC, type = "HC1")

t test of coefficients:

                                                             Estimate
(Intercept)                                                1.4620e+03
VR_DESPESA_CONTRATADA                                      2.8899e-02
idade                                                     -1.8815e+02
incumb                                                     3.2830e+04
mulher                                                    -3.3264e+03
preta                                                     -2.3362e+03
parda                                                     -1.6755e+03
amarela                                                    5.9444e+03
indigena                                                   2.1267e+03
cor_nao_informada                                         -5.0095e+02
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO -1.9507e+02
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO COMPLETO       -4.9689e+02
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO INCOMPLETO      1.6254e+02
as.factor(DS_GRAU_INSTRUCAO)Lï¿½ E ESCREVE                 1.2992e+03
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO              8.4257e+02
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO           -9.0880e+02
as.factor(SG_UF)AL                                         6.1829e+03
as.factor(SG_UF)AM                                         7.2513e+03
as.factor(SG_UF)AP                                        -4.7844e+03
as.factor(SG_UF)BA                                         1.0549e+04
as.factor(SG_UF)CE                                         1.2958e+04
as.factor(SG_UF)DF                                         5.9233e+03
as.factor(SG_UF)ES                                         5.5811e+03
as.factor(SG_UF)GO                                         6.2912e+03
as.factor(SG_UF)MA                                         8.6212e+03
as.factor(SG_UF)MG                                         1.0419e+04
as.factor(SG_UF)MS                                         6.7617e+03
as.factor(SG_UF)MT                                         1.7116e+03
as.factor(SG_UF)PA                                         1.3019e+04
as.factor(SG_UF)PB                                         6.9504e+03
as.factor(SG_UF)PE                                         7.6999e+03
as.factor(SG_UF)PI                                         7.4435e+03
as.factor(SG_UF)PR                                         9.2619e+03
as.factor(SG_UF)RJ                                         8.8433e+03
as.factor(SG_UF)RN                                         7.4762e+03
as.factor(SG_UF)RO                                        -3.1473e+02
as.factor(SG_UF)RR                                         1.5368e+03
as.factor(SG_UF)RS                                         1.0761e+04
as.factor(SG_UF)SC                                         1.0805e+04
as.factor(SG_UF)SE                                         6.4056e+03
as.factor(SG_UF)SP                                         1.3519e+04
as.factor(SG_UF)TO                                        -1.3137e+03
as.factor(SG_PARTIDO)AVANTE                               -1.2516e+02
as.factor(SG_PARTIDO)CIDADANIA                            -4.3654e+01
as.factor(SG_PARTIDO)DC                                    2.5130e+03
as.factor(SG_PARTIDO)MDB                                   1.0059e+03
as.factor(SG_PARTIDO)NOVO                                  2.7054e+01
as.factor(SG_PARTIDO)PATRIOTA                             -6.0519e+02
as.factor(SG_PARTIDO)PC do B                              -2.5532e+03
as.factor(SG_PARTIDO)PCB                                  -2.2804e+03
as.factor(SG_PARTIDO)PCO                                  -7.1695e+02
as.factor(SG_PARTIDO)PDT                                   2.6722e+03
as.factor(SG_PARTIDO)PL                                    1.9101e+04
as.factor(SG_PARTIDO)PMB                                   4.4875e+02
as.factor(SG_PARTIDO)PMN                                  -1.4795e+02
as.factor(SG_PARTIDO)PODE                                 -2.0385e+03
as.factor(SG_PARTIDO)PP                                   -2.5688e+03
as.factor(SG_PARTIDO)PROS                                 -1.3691e+03
as.factor(SG_PARTIDO)PRTB                                  1.2129e+03
as.factor(SG_PARTIDO)PSB                                  -3.0111e+03
as.factor(SG_PARTIDO)PSC                                  -2.0038e+02
as.factor(SG_PARTIDO)PSD                                   7.3235e+02
as.factor(SG_PARTIDO)PSDB                                 -4.5059e+03
as.factor(SG_PARTIDO)PSOL                                  6.9421e+03
as.factor(SG_PARTIDO)PSTU                                 -1.1384e+03
as.factor(SG_PARTIDO)PT                                    1.0537e+04
as.factor(SG_PARTIDO)PTB                                  -1.6101e+03
as.factor(SG_PARTIDO)PV                                    1.4762e+03
as.factor(SG_PARTIDO)REDE                                 -8.2925e+02
as.factor(SG_PARTIDO)REPUBLICANOS                         -1.2615e+02
as.factor(SG_PARTIDO)SOLIDARIEDADE                        -8.7524e+02
as.factor(SG_PARTIDO)UNIï¿½O                              -1.1696e+04
as.factor(SG_PARTIDO)UP                                    1.4245e+03
                                                           Std. Error t value
(Intercept)                                                2.9248e+03  0.4999
VR_DESPESA_CONTRATADA                                      1.5727e-03 18.3752
idade                                                      4.2085e+01 -4.4707
incumb                                                     4.5740e+03  7.1776
mulher                                                     6.3466e+02 -5.2413
preta                                                      6.0725e+02 -3.8471
parda                                                      5.7290e+02 -2.9246
amarela                                                    6.8497e+03  0.8678
indigena                                                   3.1127e+03  0.6832
cor_nao_informada                                          2.0121e+03 -0.2490
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO  1.0010e+03 -0.1949
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO COMPLETO        7.1031e+02 -0.6995
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO INCOMPLETO      8.7382e+02  0.1860
as.factor(DS_GRAU_INSTRUCAO)Lï¿½ E ESCREVE                 8.8748e+02  1.4639
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO              7.5509e+02  1.1159
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO            9.8351e+02 -0.9240
as.factor(SG_UF)AL                                         2.3873e+03  2.5899
as.factor(SG_UF)AM                                         2.8393e+03  2.5539
as.factor(SG_UF)AP                                         2.6111e+03 -1.8323
as.factor(SG_UF)BA                                         1.8179e+03  5.8031
as.factor(SG_UF)CE                                         2.1417e+03  6.0503
as.factor(SG_UF)DF                                         2.1847e+03  2.7112
as.factor(SG_UF)ES                                         1.9523e+03  2.8587
as.factor(SG_UF)GO                                         2.0159e+03  3.1208
as.factor(SG_UF)MA                                         1.9105e+03  4.5125
as.factor(SG_UF)MG                                         2.2176e+03  4.6983
as.factor(SG_UF)MS                                         2.0896e+03  3.2359
as.factor(SG_UF)MT                                         2.1801e+03  0.7851
as.factor(SG_UF)PA                                         2.2573e+03  5.7677
as.factor(SG_UF)PB                                         2.0513e+03  3.3883
as.factor(SG_UF)PE                                         1.9413e+03  3.9664
as.factor(SG_UF)PI                                         2.2260e+03  3.3439
as.factor(SG_UF)PR                                         1.8488e+03  5.0096
as.factor(SG_UF)RJ                                         1.7926e+03  4.9332
as.factor(SG_UF)RN                                         2.0263e+03  3.6896
as.factor(SG_UF)RO                                         2.1567e+03 -0.1459
as.factor(SG_UF)RR                                         2.0063e+03  0.7660
as.factor(SG_UF)RS                                         1.9453e+03  5.5318
as.factor(SG_UF)SC                                         2.1038e+03  5.1363
as.factor(SG_UF)SE                                         2.0789e+03  3.0813
as.factor(SG_UF)SP                                         2.1385e+03  6.3215
as.factor(SG_UF)TO                                         2.1805e+03 -0.6025
as.factor(SG_PARTIDO)AVANTE                                7.3187e+02 -0.1710
as.factor(SG_PARTIDO)CIDADANIA                             2.2822e+03 -0.0191
as.factor(SG_PARTIDO)DC                                    5.6065e+02  4.4823
as.factor(SG_PARTIDO)MDB                                   1.3546e+03  0.7425
as.factor(SG_PARTIDO)NOVO                                  1.3562e+03  0.0199
as.factor(SG_PARTIDO)PATRIOTA                              5.4830e+02 -1.1038
as.factor(SG_PARTIDO)PC do B                               2.5995e+03 -0.9822
as.factor(SG_PARTIDO)PCB                                   1.3974e+03 -1.6319
as.factor(SG_PARTIDO)PCO                                   1.0563e+03 -0.6787
as.factor(SG_PARTIDO)PDT                                   7.8831e+02  3.3898
as.factor(SG_PARTIDO)PL                                    4.1013e+03  4.6573
as.factor(SG_PARTIDO)PMB                                   4.7240e+02  0.9499
as.factor(SG_PARTIDO)PMN                                   5.1641e+02 -0.2865
as.factor(SG_PARTIDO)PODE                                  7.3686e+02 -2.7665
as.factor(SG_PARTIDO)PP                                    1.3276e+03 -1.9349
as.factor(SG_PARTIDO)PROS                                  6.6140e+02 -2.0700
as.factor(SG_PARTIDO)PRTB                                  4.8293e+02  2.5117
as.factor(SG_PARTIDO)PSB                                   9.7284e+02 -3.0952
as.factor(SG_PARTIDO)PSC                                   5.7816e+02 -0.3466
as.factor(SG_PARTIDO)PSD                                   1.3149e+03  0.5570
as.factor(SG_PARTIDO)PSDB                                  1.1567e+03 -3.8956
as.factor(SG_PARTIDO)PSOL                                  3.3210e+03  2.0904
as.factor(SG_PARTIDO)PSTU                                  8.6856e+02 -1.3107
as.factor(SG_PARTIDO)PT                                    1.5709e+03  6.7078
as.factor(SG_PARTIDO)PTB                                   6.1807e+02 -2.6051
as.factor(SG_PARTIDO)PV                                    1.9455e+03  0.7587
as.factor(SG_PARTIDO)REDE                                  1.2504e+03 -0.6632
as.factor(SG_PARTIDO)REPUBLICANOS                          1.0914e+03 -0.1156
as.factor(SG_PARTIDO)SOLIDARIEDADE                         6.1639e+02 -1.4199
as.factor(SG_PARTIDO)UNIï¿½O                               1.7195e+03 -6.8018
as.factor(SG_PARTIDO)UP                                    1.4121e+03  1.0088
                                                           Pr(>|t|)    
(Intercept)                                               0.6171795    
VR_DESPESA_CONTRATADA                                     < 2.2e-16 ***
idade                                                     7.886e-06 ***
incumb                                                    7.634e-13 ***
mulher                                                    1.629e-07 ***
preta                                                     0.0001203 ***
parda                                                     0.0034575 ** 
amarela                                                   0.3855040    
indigena                                                  0.4944767    
cor_nao_informada                                         0.8033908    
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO 0.8454930    
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO COMPLETO       0.4842374    
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO INCOMPLETO     0.8524375    
as.factor(DS_GRAU_INSTRUCAO)Lï¿½ E ESCREVE                0.1432598    
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO             0.2645127    
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO           0.3554923    
as.factor(SG_UF)AL                                        0.0096157 ** 
as.factor(SG_UF)AM                                        0.0106692 *  
as.factor(SG_UF)AP                                        0.0669363 .  
as.factor(SG_UF)BA                                        6.719e-09 ***
as.factor(SG_UF)CE                                        1.501e-09 ***
as.factor(SG_UF)DF                                        0.0067153 ** 
as.factor(SG_UF)ES                                        0.0042636 ** 
as.factor(SG_UF)GO                                        0.0018091 ** 
as.factor(SG_UF)MA                                        6.483e-06 ***
as.factor(SG_UF)MG                                        2.660e-06 ***
as.factor(SG_UF)MS                                        0.0012169 ** 
as.factor(SG_UF)MT                                        0.4324281    
as.factor(SG_UF)PA                                        8.292e-09 ***
as.factor(SG_UF)PB                                        0.0007062 ***
as.factor(SG_UF)PE                                        7.350e-05 ***
as.factor(SG_UF)PI                                        0.0008294 ***
as.factor(SG_UF)PR                                        5.553e-07 ***
as.factor(SG_UF)RJ                                        8.226e-07 ***
as.factor(SG_UF)RN                                        0.0002259 ***
as.factor(SG_UF)RO                                        0.8839785    
as.factor(SG_UF)RR                                        0.4437020    
as.factor(SG_UF)RS                                        3.254e-08 ***
as.factor(SG_UF)SC                                        2.859e-07 ***
as.factor(SG_UF)SE                                        0.0020672 ** 
as.factor(SG_UF)SP                                        2.708e-10 ***
as.factor(SG_UF)TO                                        0.5468713    
as.factor(SG_PARTIDO)AVANTE                               0.8642180    
as.factor(SG_PARTIDO)CIDADANIA                            0.9847396    
as.factor(SG_PARTIDO)DC                                   7.472e-06 ***
as.factor(SG_PARTIDO)MDB                                  0.4577728    
as.factor(SG_PARTIDO)NOVO                                 0.9840851    
as.factor(SG_PARTIDO)PATRIOTA                             0.2697289    
as.factor(SG_PARTIDO)PC do B                              0.3260328    
as.factor(SG_PARTIDO)PCB                                  0.1027288    
as.factor(SG_PARTIDO)PCO                                  0.4973286    
as.factor(SG_PARTIDO)PDT                                  0.0007022 ***
as.factor(SG_PARTIDO)PL                                   3.248e-06 ***
as.factor(SG_PARTIDO)PMB                                  0.3421664    
as.factor(SG_PARTIDO)PMN                                  0.7744977    
as.factor(SG_PARTIDO)PODE                                 0.0056779 ** 
as.factor(SG_PARTIDO)PP                                   0.0530342 .  
as.factor(SG_PARTIDO)PROS                                 0.0384760 *  
as.factor(SG_PARTIDO)PRTB                                 0.0120333 *  
as.factor(SG_PARTIDO)PSB                                  0.0019726 ** 
as.factor(SG_PARTIDO)PSC                                  0.7289114    
as.factor(SG_PARTIDO)PSD                                  0.5775589    
as.factor(SG_PARTIDO)PSDB                                 9.863e-05 ***
as.factor(SG_PARTIDO)PSOL                                 0.0366131 *  
as.factor(SG_PARTIDO)PSTU                                 0.1899941    
as.factor(SG_PARTIDO)PT                                   2.090e-11 ***
as.factor(SG_PARTIDO)PTB                                  0.0091999 ** 
as.factor(SG_PARTIDO)PV                                   0.4480217    
as.factor(SG_PARTIDO)REDE                                 0.5072227    
as.factor(SG_PARTIDO)REPUBLICANOS                         0.9079852    
as.factor(SG_PARTIDO)SOLIDARIEDADE                        0.1556580    
as.factor(SG_PARTIDO)UNIï¿½O                              1.096e-11 ***
as.factor(SG_PARTIDO)UP                                   0.3131077    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

> coeftest(m7, vcov. = vcovHC, type = "HC1")

t test of coefficients:

                                                            Estimate Std. Error
(Intercept)                                                3.4180982  0.1626057
ln_gasto                                                   0.2389354  0.0050941
idade                                                     -0.0073490  0.0012291
incumb                                                    -3.6870930  1.1267187
mulher                                                    -0.7816376  0.0270217
preta                                                     -0.3115936  0.0394652
parda                                                     -0.2506646  0.0306372
amarela                                                    0.2645360  0.2285939
indigena                                                   0.2085422  0.1990898
cor_nao_informada                                          0.1255343  0.2085210
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO  0.0430487  0.1139794
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO COMPLETO        0.1097758  0.0717388
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO INCOMPLETO     -0.0057637  0.1059523
as.factor(DS_GRAU_INSTRUCAO)Lï¿½ E ESCREVE                -0.1565834  0.1550411
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO              0.5649536  0.0699086
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO            0.2609467  0.0799392
as.factor(SG_UF)AL                                         0.5160242  0.1543184
as.factor(SG_UF)AM                                         0.9027142  0.1461709
as.factor(SG_UF)AP                                         0.0789982  0.1579766
as.factor(SG_UF)BA                                         0.8142790  0.1206279
as.factor(SG_UF)CE                                         0.6816927  0.1323747
as.factor(SG_UF)DF                                         0.6549669  0.1382159
as.factor(SG_UF)ES                                         1.1069090  0.1441796
as.factor(SG_UF)GO                                         0.6930905  0.1287496
as.factor(SG_UF)MA                                         0.8949900  0.1324083
as.factor(SG_UF)MG                                         0.6318624  0.1176342
as.factor(SG_UF)MS                                         0.9224308  0.1431326
as.factor(SG_UF)MT                                         0.8407897  0.1448978
as.factor(SG_UF)PA                                         1.0891455  0.1330945
as.factor(SG_UF)PB                                         0.6979346  0.1366106
as.factor(SG_UF)PE                                         0.8628867  0.1249881
as.factor(SG_UF)PI                                         0.5809954  0.1447496
as.factor(SG_UF)PR                                         0.4916581  0.1214325
as.factor(SG_UF)RJ                                         0.8877111  0.1181063
as.factor(SG_UF)RN                                         0.8060821  0.1516526
as.factor(SG_UF)RO                                         0.4553477  0.1513287
as.factor(SG_UF)RR                                        -0.3058438  0.1597538
as.factor(SG_UF)RS                                         0.6215237  0.1251618
as.factor(SG_UF)SC                                         0.8356588  0.1326746
as.factor(SG_UF)SE                                         0.8144761  0.1463221
as.factor(SG_UF)SP                                         0.9066577  0.1163159
as.factor(SG_UF)TO                                         0.0710542  0.1519629
as.factor(SG_PARTIDO)AVANTE                                0.8218210  0.0916962
as.factor(SG_PARTIDO)CIDADANIA                             0.8379324  0.1223482
as.factor(SG_PARTIDO)DC                                    0.0180204  0.1146966
as.factor(SG_PARTIDO)MDB                                   1.2536800  0.0930142
as.factor(SG_PARTIDO)NOVO                                  0.9389509  0.0989406
as.factor(SG_PARTIDO)PATRIOTA                              0.3239359  0.0922945
as.factor(SG_PARTIDO)PC do B                               1.2497321  0.1898087
as.factor(SG_PARTIDO)PCB                                   1.0428280  0.2529870
as.factor(SG_PARTIDO)PCO                                   0.9724750  0.2102410
as.factor(SG_PARTIDO)PDT                                   0.9300572  0.0899562
as.factor(SG_PARTIDO)PL                                    1.9535036  0.0927480
as.factor(SG_PARTIDO)PMB                                   0.9778992  0.1126608
as.factor(SG_PARTIDO)PMN                                   0.1565766  0.1011701
as.factor(SG_PARTIDO)PODE                                  0.8297424  0.0884338
as.factor(SG_PARTIDO)PP                                    1.4044887  0.0908266
as.factor(SG_PARTIDO)PROS                                  0.4500064  0.1057712
as.factor(SG_PARTIDO)PRTB                                  0.6470371  0.1074036
as.factor(SG_PARTIDO)PSB                                   0.8910723  0.0906009
as.factor(SG_PARTIDO)PSC                                   0.5885140  0.0944698
as.factor(SG_PARTIDO)PSD                                   1.3720929  0.0983474
as.factor(SG_PARTIDO)PSDB                                  1.1083784  0.1034707
as.factor(SG_PARTIDO)PSOL                                  0.8055831  0.1071779
as.factor(SG_PARTIDO)PSTU                                  0.0481294  0.1686084
as.factor(SG_PARTIDO)PT                                    2.1229968  0.0960288
as.factor(SG_PARTIDO)PTB                                   0.5924386  0.0881335
as.factor(SG_PARTIDO)PV                                    0.8531468  0.1650238
as.factor(SG_PARTIDO)REDE                                  0.3168040  0.1179556
as.factor(SG_PARTIDO)REPUBLICANOS                          1.3452106  0.0901307
as.factor(SG_PARTIDO)SOLIDARIEDADE                         0.6128364  0.0934084
as.factor(SG_PARTIDO)UNIï¿½O                               1.5168955  0.0935599
as.factor(SG_PARTIDO)UP                                    2.2760881  0.3613838
ln_gasto:incumb                                            0.4091696  0.0778144
                                                           t value  Pr(>|t|)
(Intercept)                                                21.0208 < 2.2e-16
ln_gasto                                                   46.9042 < 2.2e-16
idade                                                      -5.9793 2.323e-09
incumb                                                     -3.2724 0.0010702
mulher                                                    -28.9262 < 2.2e-16
preta                                                      -7.8954 3.218e-15
parda                                                      -8.1817 3.162e-16
amarela                                                     1.1572 0.2472074
indigena                                                    1.0475 0.2949061
cor_nao_informada                                           0.6020 0.5471737
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO   0.3777 0.7056703
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO COMPLETO         1.5302 0.1259969
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO INCOMPLETO      -0.0544 0.9566182
as.factor(DS_GRAU_INSTRUCAO)Lï¿½ E ESCREVE                 -1.0099 0.3125465
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO               8.0813 7.198e-16
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO             3.2643 0.0011012
as.factor(SG_UF)AL                                          3.3439 0.0008293
as.factor(SG_UF)AM                                          6.1757 6.858e-10
as.factor(SG_UF)AP                                          0.5001 0.6170427
as.factor(SG_UF)BA                                          6.7503 1.562e-11
as.factor(SG_UF)CE                                          5.1497 2.662e-07
as.factor(SG_UF)DF                                          4.7387 2.182e-06
as.factor(SG_UF)ES                                          7.6773 1.787e-14
as.factor(SG_UF)GO                                          5.3832 7.492e-08
as.factor(SG_UF)MA                                          6.7593 1.469e-11
as.factor(SG_UF)MG                                          5.3714 7.999e-08
as.factor(SG_UF)MS                                          6.4446 1.216e-10
as.factor(SG_UF)MT                                          5.8026 6.739e-09
as.factor(SG_UF)PA                                          8.1832 3.122e-16
as.factor(SG_UF)PB                                          5.1089 3.303e-07
as.factor(SG_UF)PE                                          6.9038 5.392e-12
as.factor(SG_UF)PI                                          4.0138 6.021e-05
as.factor(SG_UF)PR                                          4.0488 5.189e-05
as.factor(SG_UF)RJ                                          7.5162 6.155e-14
as.factor(SG_UF)RN                                          5.3153 1.089e-07
as.factor(SG_UF)RO                                          3.0090 0.0026281
as.factor(SG_UF)RR                                         -1.9145 0.0555905
as.factor(SG_UF)RS                                          4.9658 6.964e-07
as.factor(SG_UF)SC                                          6.2986 3.139e-10
as.factor(SG_UF)SE                                          5.5663 2.673e-08
as.factor(SG_UF)SP                                          7.7948 7.137e-15
as.factor(SG_UF)TO                                          0.4676 0.6400988
as.factor(SG_PARTIDO)AVANTE                                 8.9624 < 2.2e-16
as.factor(SG_PARTIDO)CIDADANIA                              6.8488 7.917e-12
as.factor(SG_PARTIDO)DC                                     0.1571 0.8751589
as.factor(SG_PARTIDO)MDB                                   13.4784 < 2.2e-16
as.factor(SG_PARTIDO)NOVO                                   9.4901 < 2.2e-16
as.factor(SG_PARTIDO)PATRIOTA                               3.5098 0.0004505
as.factor(SG_PARTIDO)PC do B                                6.5842 4.819e-11
as.factor(SG_PARTIDO)PCB                                    4.1221 3.787e-05
as.factor(SG_PARTIDO)PCO                                    4.6255 3.786e-06
as.factor(SG_PARTIDO)PDT                                   10.3390 < 2.2e-16
as.factor(SG_PARTIDO)PL                                    21.0625 < 2.2e-16
as.factor(SG_PARTIDO)PMB                                    8.6800 < 2.2e-16
as.factor(SG_PARTIDO)PMN                                    1.5477 0.1217387
as.factor(SG_PARTIDO)PODE                                   9.3826 < 2.2e-16
as.factor(SG_PARTIDO)PP                                    15.4634 < 2.2e-16
as.factor(SG_PARTIDO)PROS                                   4.2545 2.115e-05
as.factor(SG_PARTIDO)PRTB                                   6.0244 1.762e-09
as.factor(SG_PARTIDO)PSB                                    9.8351 < 2.2e-16
as.factor(SG_PARTIDO)PSC                                    6.2297 4.875e-10
as.factor(SG_PARTIDO)PSD                                   13.9515 < 2.2e-16
as.factor(SG_PARTIDO)PSDB                                  10.7120 < 2.2e-16
as.factor(SG_PARTIDO)PSOL                                   7.5163 6.149e-14
as.factor(SG_PARTIDO)PSTU                                   0.2855 0.7753051
as.factor(SG_PARTIDO)PT                                    22.1079 < 2.2e-16
as.factor(SG_PARTIDO)PTB                                    6.7221 1.896e-11
as.factor(SG_PARTIDO)PV                                     5.1698 2.391e-07
as.factor(SG_PARTIDO)REDE                                   2.6858 0.0072486
as.factor(SG_PARTIDO)REPUBLICANOS                          14.9251 < 2.2e-16
as.factor(SG_PARTIDO)SOLIDARIEDADE                          6.5608 5.633e-11
as.factor(SG_PARTIDO)UNIï¿½O                               16.2131 < 2.2e-16
as.factor(SG_PARTIDO)UP                                     6.2983 3.145e-10
ln_gasto:incumb                                             5.2583 1.486e-07
                                                             
(Intercept)                                               ***
ln_gasto                                                  ***
idade                                                     ***
incumb                                                    ** 
mulher                                                    ***
preta                                                     ***
parda                                                     ***
amarela                                                      
indigena                                                     
cor_nao_informada                                            
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO    
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO COMPLETO          
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO INCOMPLETO        
as.factor(DS_GRAU_INSTRUCAO)Lï¿½ E ESCREVE                   
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO             ***
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO           ** 
as.factor(SG_UF)AL                                        ***
as.factor(SG_UF)AM                                        ***
as.factor(SG_UF)AP                                           
as.factor(SG_UF)BA                                        ***
as.factor(SG_UF)CE                                        ***
as.factor(SG_UF)DF                                        ***
as.factor(SG_UF)ES                                        ***
as.factor(SG_UF)GO                                        ***
as.factor(SG_UF)MA                                        ***
as.factor(SG_UF)MG                                        ***
as.factor(SG_UF)MS                                        ***
as.factor(SG_UF)MT                                        ***
as.factor(SG_UF)PA                                        ***
as.factor(SG_UF)PB                                        ***
as.factor(SG_UF)PE                                        ***
as.factor(SG_UF)PI                                        ***
as.factor(SG_UF)PR                                        ***
as.factor(SG_UF)RJ                                        ***
as.factor(SG_UF)RN                                        ***
as.factor(SG_UF)RO                                        ** 
as.factor(SG_UF)RR                                        .  
as.factor(SG_UF)RS                                        ***
as.factor(SG_UF)SC                                        ***
as.factor(SG_UF)SE                                        ***
as.factor(SG_UF)SP                                        ***
as.factor(SG_UF)TO                                           
as.factor(SG_PARTIDO)AVANTE                               ***
as.factor(SG_PARTIDO)CIDADANIA                            ***
as.factor(SG_PARTIDO)DC                                      
as.factor(SG_PARTIDO)MDB                                  ***
as.factor(SG_PARTIDO)NOVO                                 ***
as.factor(SG_PARTIDO)PATRIOTA                             ***
as.factor(SG_PARTIDO)PC do B                              ***
as.factor(SG_PARTIDO)PCB                                  ***
as.factor(SG_PARTIDO)PCO                                  ***
as.factor(SG_PARTIDO)PDT                                  ***
as.factor(SG_PARTIDO)PL                                   ***
as.factor(SG_PARTIDO)PMB                                  ***
as.factor(SG_PARTIDO)PMN                                     
as.factor(SG_PARTIDO)PODE                                 ***
as.factor(SG_PARTIDO)PP                                   ***
as.factor(SG_PARTIDO)PROS                                 ***
as.factor(SG_PARTIDO)PRTB                                 ***
as.factor(SG_PARTIDO)PSB                                  ***
as.factor(SG_PARTIDO)PSC                                  ***
as.factor(SG_PARTIDO)PSD                                  ***
as.factor(SG_PARTIDO)PSDB                                 ***
as.factor(SG_PARTIDO)PSOL                                 ***
as.factor(SG_PARTIDO)PSTU                                    
as.factor(SG_PARTIDO)PT                                   ***
as.factor(SG_PARTIDO)PTB                                  ***
as.factor(SG_PARTIDO)PV                                   ***
as.factor(SG_PARTIDO)REDE                                 ** 
as.factor(SG_PARTIDO)REPUBLICANOS                         ***
as.factor(SG_PARTIDO)SOLIDARIEDADE                        ***
as.factor(SG_PARTIDO)UNIï¿½O                              ***
as.factor(SG_PARTIDO)UP                                   ***
ln_gasto:incumb                                           ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

> 
> vc6 <- vcovHC(m6, type = "HC1")
> vc7 <- vcovHC(m7, type = "HC1")
> linearHypothesis(m7, "ln_gasto:incumb", vcov. = vc7)

Linear hypothesis test:
ln_gasto:incumb = 0

Model 1: restricted model
Model 2: ln_votos ~ ln_gasto + idade + incumb + ln_gasto:incumb + mulher + 
    preta + parda + amarela + indigena + cor_nao_informada + 
    as.factor(DS_GRAU_INSTRUCAO) + as.factor(SG_UF) + as.factor(SG_PARTIDO)

Note: Coefficient covariance matrix supplied.

  Res.Df Df      F    Pr(>F)    
1   9401                        
2   9400  1 27.649 1.486e-07 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
> linearHypothesis(m7, "ln_gasto + ln_gasto:incumb = 0", vcov. = vc7)

Linear hypothesis test:
ln_gasto  + ln_gasto:incumb = 0

Model 1: restricted model
Model 2: ln_votos ~ ln_gasto + idade + incumb + ln_gasto:incumb + mulher + 
    preta + parda + amarela + indigena + cor_nao_informada + 
    as.factor(DS_GRAU_INSTRUCAO) + as.factor(SG_UF) + as.factor(SG_PARTIDO)

Note: Coefficient covariance matrix supplied.

  Res.Df Df      F    Pr(>F)    
1   9401                        
2   9400  1 69.421 < 2.2e-16 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
> 
> linearHypothesis(m6, "mulher", vcov. = vc6)

Linear hypothesis test:
mulher = 0

Model 1: restricted model
Model 2: ln_votos ~ ln_gasto + idade + incumb + mulher + preta + parda + 
    amarela + indigena + cor_nao_informada + as.factor(DS_GRAU_INSTRUCAO) + 
    as.factor(SG_UF) + as.factor(SG_PARTIDO)

Note: Coefficient covariance matrix supplied.

  Res.Df Df      F    Pr(>F)    
1   9402                        
2   9401  1 830.83 < 2.2e-16 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
> linearHypothesis(m6, c("preta", "parda", "amarela", "indigena", "cor_nao_inf$

Linear hypothesis test:
preta = 0
parda = 0
amarela = 0
indigena = 0
cor_nao_informada = 0

Model 1: restricted model
Model 2: ln_votos ~ ln_gasto + idade + incumb + mulher + preta + parda + 
    amarela + indigena + cor_nao_informada + as.factor(DS_GRAU_INSTRUCAO) + 
    as.factor(SG_UF) + as.factor(SG_PARTIDO)

Note: Coefficient covariance matrix supplied.

  Res.Df Df      F    Pr(>F)    
1   9406                        
2   9401  5 20.827 < 2.2e-16 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
> linearHypothesis(m6, matchCoefs(m6, "DS_GRAU_INSTRUCAO"), vcov. = vc6)

Linear hypothesis test:
as.factor(DS_GRAU_INSTRUCAO)ENSINO FUNDAMENTAL INCOMPLETO = 0
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO COMPLETO = 0
as.factor(DS_GRAU_INSTRUCAO)ENSINO Mï¿½DIO INCOMPLETO = 0
as.factor(DS_GRAU_INSTRUCAO)Lï¿½ E ESCREVE = 0
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR COMPLETO = 0
as.factor(DS_GRAU_INSTRUCAO)SUPERIOR INCOMPLETO = 0

Model 1: restricted model
Model 2: ln_votos ~ ln_gasto + idade + incumb + mulher + preta + parda + 
    amarela + indigena + cor_nao_informada + as.factor(DS_GRAU_INSTRUCAO) + 
    as.factor(SG_UF) + as.factor(SG_PARTIDO)

Note: Coefficient covariance matrix supplied.

  Res.Df Df      F    Pr(>F)    
1   9407                        
2   9401  6 45.994 < 2.2e-16 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
> linearHypothesis(m6, matchCoefs(m6, "SG_UF"), vcov. = vc6)

Linear hypothesis test:
as.factor(SG_UF)AL = 0
as.factor(SG_UF)AM = 0
as.factor(SG_UF)AP = 0
as.factor(SG_UF)BA = 0
as.factor(SG_UF)CE = 0
as.factor(SG_UF)DF = 0
as.factor(SG_UF)ES = 0
as.factor(SG_UF)GO = 0
as.factor(SG_UF)MA = 0
as.factor(SG_UF)MG = 0
as.factor(SG_UF)MS = 0
as.factor(SG_UF)MT = 0
as.factor(SG_UF)PA = 0
as.factor(SG_UF)PB = 0
as.factor(SG_UF)PE = 0
as.factor(SG_UF)PI = 0
as.factor(SG_UF)PR = 0
as.factor(SG_UF)RJ = 0
as.factor(SG_UF)RN = 0
as.factor(SG_UF)RO = 0
as.factor(SG_UF)RR = 0
as.factor(SG_UF)RS = 0
as.factor(SG_UF)SC = 0
as.factor(SG_UF)SE = 0
as.factor(SG_UF)SP = 0
as.factor(SG_UF)TO = 0

Model 1: restricted model
Model 2: ln_votos ~ ln_gasto + idade + incumb + mulher + preta + parda + 
    amarela + indigena + cor_nao_informada + as.factor(DS_GRAU_INSTRUCAO) + 
    as.factor(SG_UF) + as.factor(SG_PARTIDO)

Note: Coefficient covariance matrix supplied.

  Res.Df Df      F    Pr(>F)    
1   9427                        
2   9401 26 13.273 < 2.2e-16 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
> linearHypothesis(m6, matchCoefs(m6, "SG_PARTIDO"), vcov. = vc6)

Linear hypothesis test:
as.factor(SG_PARTIDO)AVANTE = 0
as.factor(SG_PARTIDO)CIDADANIA = 0
as.factor(SG_PARTIDO)DC = 0
as.factor(SG_PARTIDO)MDB = 0
as.factor(SG_PARTIDO)NOVO = 0
as.factor(SG_PARTIDO)PATRIOTA = 0
as.factor(SG_PARTIDO)PC do B = 0
as.factor(SG_PARTIDO)PCB = 0
as.factor(SG_PARTIDO)PCO = 0
as.factor(SG_PARTIDO)PDT = 0
as.factor(SG_PARTIDO)PL = 0
as.factor(SG_PARTIDO)PMB = 0
as.factor(SG_PARTIDO)PMN = 0
as.factor(SG_PARTIDO)PODE = 0
as.factor(SG_PARTIDO)PP = 0
as.factor(SG_PARTIDO)PROS = 0
as.factor(SG_PARTIDO)PRTB = 0
as.factor(SG_PARTIDO)PSB = 0
as.factor(SG_PARTIDO)PSC = 0
as.factor(SG_PARTIDO)PSD = 0
as.factor(SG_PARTIDO)PSDB = 0
as.factor(SG_PARTIDO)PSOL = 0
as.factor(SG_PARTIDO)PSTU = 0
as.factor(SG_PARTIDO)PT = 0
as.factor(SG_PARTIDO)PTB = 0
as.factor(SG_PARTIDO)PV = 0
as.factor(SG_PARTIDO)REDE = 0
as.factor(SG_PARTIDO)REPUBLICANOS = 0
as.factor(SG_PARTIDO)SOLIDARIEDADE = 0
as.factor(SG_PARTIDO)UNIï¿½O = 0
as.factor(SG_PARTIDO)UP = 0

Model 1: restricted model
Model 2: ln_votos ~ ln_gasto + idade + incumb + mulher + preta + parda + 
    amarela + indigena + cor_nao_informada + as.factor(DS_GRAU_INSTRUCAO) + 
    as.factor(SG_UF) + as.factor(SG_PARTIDO)

Note: Coefficient covariance matrix supplied.

  Res.Df Df      F    Pr(>F)    
1   9432                        
2   9401 31 46.241 < 2.2e-16 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
> 
> vif(m6)
                                 GVIF Df GVIF^(1/(2*Df))
ln_gasto                     1.581079  1        1.257410
idade                        1.089493  1        1.043788
incumb                       1.106404  1        1.051857
mulher                       1.042645  1        1.021100
preta                        1.212603  1        1.101182
parda                        1.305247  1        1.142474
amarela                      1.013410  1        1.006683
indigena                     1.028584  1        1.014192
cor_nao_informada            1.096359  1        1.047071
as.factor(DS_GRAU_INSTRUCAO) 1.257729  6        1.019293
as.factor(SG_UF)             1.573741 26        1.008758
as.factor(SG_PARTIDO)        2.218562 31        1.012936
>

---

**Cursor**

Subetapa 10.1 — papel: tutora. A saída está coerente com o script que usa `base_reg`: 9.474 linhas, Breusch-Pagan de `m3` e `m6` com p-valor pequeno, erros `HC1`, testes F e `vif(m6)` impressos. A leitura do que esses números dizem sobre votos e gasto é de vocês.

No `m7`, `ln_gasto` é a inclinação para quem tem `incumb` igual a 0. `incumb` sozinho é a diferença de `ln_votos` quando `ln_gasto` é 0, isto é, quando a despesa contratada é 0. A inclinação de quem tem `incumb` igual a 1 é `ln_gasto` mais `ln_gasto:incumb`. O primeiro `linearHypothesis` testa se essa interação é zero. O segundo testa se a soma das duas é zero.

No `vif`, a coluna para comparar fatores com vários níveis é `GVIF^(1/(2*Df))`, não o GVIF cru. UF tem 26 graus de liberdade e partido 31. O teste de cor junta `preta`, `parda`, `amarela`, `indigena` e `cor_nao_informada`. O de gênero, do jeito que rodou, é só `mulher`.

1. Na regressão em log com controles, o que o número de `ln_gasto` diz, e o que muda quando vocês olham o `HC1` em vez do `summary`?
2. No `m7`, a inclinação de quem está com `incumb` igual a 1 é maior, menor ou igual à de quem está com 0? Usem os dois coeficientes e o teste da soma.
3. Qual limite de `GVIF^(1/(2*Df))` vocês estão usando para dizer se a colinearidade incomoda?

---

**User**

agora eu gostaria de salvar as imagens que fizemos em png, como eu posso fazer?

---

**Cursor**

Subetapa 7.1 — papel: tutora. Cada figura vira um PNG abrindo o arquivo antes do gráfico e fechando depois. Com um gráfico fictício:

```r
png("figura_ficticia.png", width = 900, height = 700)
hist(dados_ficticios$x, main = "", xlab = "x")
dev.off()
```

`png` abre o arquivo. O gráfico que vem em seguida vai para esse arquivo, não para o painel. `dev.off` fecha e grava. Sem o `dev.off`, o PNG fica vazio ou incompleto. `width` e `height` estão em pixels.

O diretório de trabalho precisa ser a pasta do projeto. Aí os arquivos caem ao lado do `Trabalho_Final.R`. Cada `plot` e cada `hist` do script precisa do próprio par `png` e `dev.off`. Um único `png` no começo guarda só o último gráfico.

1. Os seis gráficos do script entram, com um arquivo para cada um?
2. Os nomes dos arquivos ficam em português, por exemplo `hist_ln_votos.png`?

---

**User**

Eu gostaria que voce olhasse o código uma última vez, rode no seu sistema e apenas confirme que ele está operando, além disso eu preciso criar um github para colocar esse projeto, então vou criar e gostaria que voce fizesse os uploads que eu pedir, para essa parte a Gabo deixou usar a IA de forma livre, apenas no github.

---

**Cursor**

Subetapa 5.5 — papel: ferramenta nesta checagem. Vou ler o script, rodá-lo do começo ao fim e dizer só se ele termina ou em que linha para. O GitHub fica para quando o repositório existir e você pedir o envio.

---

**User**

Start multitasking

---

**Cursor**

Vou continuar a checagem do script em segundo plano, para a conversa não ficar travada enquanto o R roda.

A checagem do `Trabalho_Final.R` segue em segundo plano com o [Rodar script e conferir](1b9fb7c7-1571-480d-83ab-b4afbb0ff08a). O script já passou na leitura sintática. Quando a execução terminar, eu digo se ele chegou ao fim ou em que ponto parou. O envio para o GitHub fica para quando o repositório existir e você indicar o que subir.

---

**User**

https://github.com/pedroberta/Econometria_1.git enquanto voce roda, esse é o github, gostaria que voce adicionasse as bases que utilizamos, então aquelas 3 de Brasil, crie a pasta Dados e coloque lá, além disso crie a pasta Regras e coloque as rules, skills, etc do cursor, por fim coloque o código trabalho final lá dentro também. Crie um read-me para o repositório e também um requirements.txt para o trabalho

---

**Cursor**

O envio para o GitHub começa agora, em paralelo com a execução do script. As duas bases grandes passam do limite do GitHub, então o envio vai tratar isso com cuidado.

O envio para https://github.com/pedroberta/Econometria_1.git está em andamento no [Subir projeto no GitHub](a7803667-4541-4c9a-80e2-12e314ae9836).

Vão para o repositório a pasta `Dados` com `consulta_cand_2022_BRASIL.csv`, a pasta `Regras` com as rules, skills e agents do Cursor, o `Trabalho_Final.R`, o README e o `requirements.txt`.

As outras duas bases nacionais, de votos e de despesa contratada, têm cerca de 4 GB e 1,3 GB. O GitHub recusa arquivo maior que 100 MB, então elas ficam na sua pasta local e o README explica isso. A checagem do script continua no [Rodar script e conferir](1b9fb7c7-1571-480d-83ab-b4afbb0ff08a).

---

**User**

<timestamp>Tuesday, Nov 24, 2026, 9:32 PM (UTC-3)</timestamp>
<system_notification>
The following task has finished. If you were already aware, ignore this notification and do not restate prior responses.

<task>
kind: shell
status: success
task_id: 735452
title: Run Trabalho_Final.R from start to finish
tool_call_id: call-25744346-745f-41a7-86df-6e3edcb1c39d-182
fc_c7ea6ca7-59b3-47fe-8383-c9dc14691246_0
output_path: C:\Users\pedro\.cursor\projects\c-Users-pedro-OneDrive-rea-de-Trabalho-Econometria-Projeto\terminals\735452.txt
</task>
</system_notification>
<user_query>Briefly inform the user about the task result and perform any follow-up actions (if needed). If there's no follow-ups needed, don't explicitly say that.</user_query>

---

**Cursor**

Subetapa 5.5 — papel: ferramenta. O `Trabalho_Final.R` rodou do começo ao fim neste computador e terminou sem erro, em cerca de sete minutos. A saída chega até o `vif` de `m6`.

O envio para o GitHub continua no [Subir projeto no GitHub](a7803667-4541-4c9a-80e2-12e314ae9836).

---

**User**

<timestamp>Tuesday, Nov 24, 2026, 9:32 PM (UTC-3)</timestamp>
<system_notification>
The following task has finished. If you were already aware, ignore this notification and do not restate prior responses.

<task>
kind: subagent
status: success
task_id: 1b9fb7c7-1571-480d-83ab-b4afbb0ff08a
title: Rodar script e conferir
tool_call_id: call-e59006b8-39d9-433d-b52a-724fb240ac5a-186
fc_3aec5664-c2e0-9b1e-ba64-5ecadaf2f548_0
agent_id: 1b9fb7c7-1571-480d-83ab-b4afbb0ff08a
detail: Subetapa 5.5 — papel: ferramenta. O `Trabalho_Final.R` rodou do começo ao fim neste computador. A sintaxe passou no `parse`, a execução terminou com código 0 em cerca de sete minutos, e não houve erro do R. Os seis PNG foram gravados na pasta `figuras`: dispersão dos logs, histograma de votos em log, histograma de despesa em log, votos até 50 mil, despesa até 500 mil e resíduos de `m6`.

Quando o repositório existir, eu envio os arquivos que você indicar. O GitHub recusa arquivo comum acima de 100 MB. O CSV de votos, o de despesas contratadas e os zips grandes não entram nesse envio. O script, o `Base_Final.csv`, as figuras e os PDFs da pasta cabem.
output_path: c:\Users\pedro\.cursor\projects\c-Users-pedro-OneDrive-rea-de-Trabalho-Econometria-Projeto\agent-transcripts\bbf2d8ad-260f-4cbf-8be9-43f61a445f8b\subagents\1b9fb7c7-1571-480d-83ab-b4afbb0ff08a.jsonl
</task>
</system_notification>
<user_query>Perform any necessary follow-up actions in response to the subagent completion above. If no follow-up work is needed, no further action is required. If you mention an agent or subagent in your response, link it with the `[Name](id)` Don't use generic label such as `[agent]`, `[worker]`, or `[subagent]`. For cloud subagents, when the agent has edited code, link to `[Review](bc-id#changes)`, or, if you know the exact added and deleted line counts, `[Review +A −D](bc-id#changes)`, replacing A and D with those counts. Never write A or D literally. Use `[Try Live](bc-id#desktop)` only when the agent used computer use. Don't repeat the same confirmation every time.</user_query>

---

**Cursor**

O `Trabalho_Final.R` terminou sem erro e gravou seis PNG na pasta `figuras`: dispersão dos logs, histogramas de votos e despesa em log, votos até 50 mil, despesa até 500 mil e resíduos de `m6`.

O envio para o GitHub segue no [Subir projeto no GitHub](a7803667-4541-4c9a-80e2-12e314ae9836).

---

**User**

teria como colocar essas bases maiores no github?

<timestamp>Tuesday, Nov 24, 2026, 9:37 PM (UTC-3)</timestamp>
<system_notification>
The following task has finished. If you were already aware, ignore this notification and do not restate prior responses.

<task>
kind: subagent
status: success
task_id: a7803667-4541-4c9a-80e2-12e314ae9836
title: Subir projeto no GitHub
tool_call_id: call-c4d3b5f0-d0e9-491b-a56d-28ce128dde88-187
fc_e18089cc-5d41-4a76-8e71-0146e5491f37_0
agent_id: a7803667-4541-4c9a-80e2-12e314ae9836
detail: <user_visible_high_level_summary>
O repositório https://github.com/pedroberta/Econometria_1 está no commit 3fb6bf4de28cbb8bb712a044135565561ea28895, com o script, o README, o requirements.txt, a pasta Regras e só a base consulta_cand_2022_BRASIL.csv. As bases despesas_contratadas_candidatos_2022_BRASIL.csv (cerca de 1,3 GB) e votacao_candidato_munzona_2022_BRASIL.csv (cerca de 4,3 GB) ficaram de fora porque o GitHub recusa arquivos acima de 100 MB. Vale conferir se a descrição do README está certa.
</user_visible_high_level_summary>
<response>
Subetapa 14.1 e 14.2 — papel: ferramenta. O repositório foi publicado a partir de uma cópia temporária; `Trabalho_Final.R` e as bases na pasta do projeto não foram alterados.

**Repositório:** https://github.com/pedroberta/Econometria_1 
**Commit:** `3fb6bf4de28cbb8bb712a044135565561ea28895` (branch `main`)

Arquivos enviados:

- `.gitignore`
- `Dados/consulta_cand_2022_BRASIL.csv` (17.141.760 bytes)
- `README.md`
- `requirements.txt`
- `Trabalho_Final.R`
- `Regras/rules/econometria-codigo-r.mdc`
- `Regras/rules/econometria-papeis.mdc`
- `Regras/skills/econometria-i/SKILL.md`
- `Regras/skills/econometria-i/etapas.md`
- `Regras/skills/revisar-script-r/SKILL.md`
- `Regras/agents/mentora.md`
- `Regras/agents/tutora.md`
- `Regras/agents/revisora-r.md`

**Não foram enviados** estes dois CSV, porque o GitHub recusa arquivos acima de 100 MB:

- `despesas_contratadas_candidatos_2022_BRASIL.csv` — cerca de 1,3 GB (1.344.031.169 bytes)
- `votacao_candidato_munzona_2022_BRASIL.csv` — cerca de 4,3 GB (4.298.074.975 bytes)

Eles continuam só na máquina local. O README pede para colocá-los em `Dados/` com esses nomes. O script, como está, abre os três CSV pelo nome no diretório de trabalho, que precisa ser a pasta do projeto.

Confiram se a descrição do README está certa.
</response>
output_path: c:\Users\pedro\.cursor\projects\c-Users-pedro-OneDrive-rea-de-Trabalho-Econometria-Projeto\agent-transcripts\bbf2d8ad-260f-4cbf-8be9-43f61a445f8b\subagents\a7803667-4541-4c9a-80e2-12e314ae9836.jsonl
</task>
</system_notification>
<user_query>Perform any necessary follow-up actions in response to the subagent completion above. If no follow-up work is needed, no further action is required. If you mention an agent or subagent in your response, link it with the `[Name](id)` Don't use generic label such as `[agent]`, `[worker]`, or `[subagent]`. For cloud subagents, when the agent has edited code, link to `[Review](bc-id#changes)`, or, if you know the exact added and deleted line counts, `[Review +A −D](bc-id#changes)`, replacing A and D with those counts. Never write A or D literally. Use `[Try Live](bc-id#desktop)` only when the agent used computer use. Don't repeat the same confirmation every time.</user_query>

---

**Cursor**

Subetapa 14.1 e 14.2 — papel: ferramenta. O repositório está em https://github.com/pedroberta/Econometria_1, no commit `3fb6bf4de28cbb8bb712a044135565561ea28895`.

Foram enviados o `Trabalho_Final.R`, o `README.md`, o `requirements.txt`, a pasta `Regras` (rules, skills e agents) e `Dados/consulta_cand_2022_BRASIL.csv`.

`despesas_contratadas_candidatos_2022_BRASIL.csv` (cerca de 1,3 GB) e `votacao_candidato_munzona_2022_BRASIL.csv` (cerca de 4,3 GB) não foram enviados: o GitHub recusa arquivo acima de 100 MB. Eles continuam na pasta local. O README pede para colocá-los em `Dados/` com esses nomes.

Confiram se a descrição do README está certa.

---

**User**

teria como colocar essas bases maiores no github?

---

**Cursor**

Subetapa 14.1 — papel: ferramenta. Essas duas bases não entram no GitHub do jeito normal. O site recusa qualquer arquivo acima de 100 MB. A de despesas tem cerca de 1,3 GB e a de votos cerca de 4,3 GB.

O Git LFS, que é o modo do GitHub para arquivo grande, no plano gratuito inclui 1 GB no total. Cada uma dessas bases, sozinha, passa desse 1 GB. Sem um pacote pago de armazenamento extra, o envio não completa.

Elas continuam na pasta local. O caminho que cabe no repositório gratuito é um link no README para onde o arquivo estiver, por exemplo OneDrive, Google Drive ou Zenodo. Se você gerar esse link com acesso de leitura, eu coloco no README.

---

**User**

teria mais alguma forma? talvez se gerarmos um código que le o link e faz com que as bases sejam adicionadas na pasta dados?

---

**Cursor**

Subetapa 14.1 — papel: ferramenta. Dá para o repositório guardar só os links, e um script baixar as duas bases grandes para a pasta `Dados`. Vou ver como o `Trabalho_Final.R` abre os arquivos para o download cair no lugar certo.

Subetapa 14.1 — papel: ferramenta. Dá para fazer isso. O repositório guarda o script e os links. Quem clonar o projeto baixa as bases grandes para `Dados/`.

Criei o `baixar_bases.R` e enviei no commit `8a8964c`: https://github.com/pedroberta/Econometria_1

O script ainda não baixa nada, porque os dois links estão vazios. Publique cada CSV num endereço direto, em que o navegador comece o download em vez de abrir uma página. OneDrive, Google Drive ou Zenodo servem. Depois cole as duas URLs na tabela `bases`, dentro de `baixar_bases.R`, e rode:

```r
source("baixar_bases.R")
```

Os arquivos vão para `Dados/despesas_contratadas_candidatos_2022_BRASIL.csv` e `Dados/votacao_candidato_munzona_2022_BRASIL.csv`. O `Trabalho_Final.R` procura cada CSV primeiro na pasta do projeto e, se não achar, em `Dados/`. As cópias que já estão na sua pasta local continuam valendo.

Quando os links estiverem prontos, me passe os dois que eu colo no script e subo de novo.

---

**User**

então esses são os links de cada arquivo da base, o problema é que esse link gera um arquivo zip, com muito mais informações que precisamos, então o ideial seria extrair desse zip as bases necessárias e dai sumir com o restohttps://cdn.tse.jus.br/estatistica/sead/odsele/consulta_cand/consulta_cand_2022.zip
https://cdn.tse.jus.br/estatistica/sead/odsele/votacao_candidato_munzona/votacao_candidato_munzona_2022.zip
https://cdn.tse.jus.br/estatistica/sead/odsele/prestacao_contas/prestacao_de_contas_eleitorais_candidatos_2022.zip

---

**Cursor**

Subetapa 3.2 — papel: ferramenta. Os três links são os zips oficiais do TSE. Vou gravar um script que baixa cada zip, extrai só o CSV do Brasil que o trabalho usa e apaga o zip.

O script, do jeito que ficou, baixaria de novo os arquivos que você já tem na pasta do projeto. Vou fazer ele pular o download quando o CSV já existir.

Subetapa 3.2 — papel: ferramenta. O `baixar_bases.R` agora usa os três links do TSE. Ele está no repositório, no commit `e19a028`: https://github.com/pedroberta/Econometria_1

Para cada zip, o script faz isto:

1. Baixa o pacote para um arquivo temporário.
2. Extrai só o CSV do Brasil que o trabalho usa: candidatos, despesa contratada e votos por município e zona.
3. Grava esse CSV em `Dados/`.
4. Apaga o zip. Os outros arquivos do pacote não são salvos.

Na pasta do projeto:

```r
source("baixar_bases.R")
```

Se o CSV já estiver na pasta do projeto ou em `Dados/`, o script não baixa de novo. As cópias que você já tem continuam valendo. Quem clonar o repositório sem essas bases roda esse comando e fica só com os três CSV.

---

**User**

já que temos o requirements eu posso tirar do código trabalho final, né, além disso atualize o readme que ficou desatualizado

---

**Cursor**

Subetapa 14.2 — papel: ferramenta no README. Vou ver o que o `requirements.txt` lista e o que o `Trabalho_Final.R` ainda carrega, porque uma coisa não substitui a outra.

Subetapa 14.2 — papel: ferramenta. As linhas `library` ficam no `Trabalho_Final.R`. O `requirements.txt` só lista o que instalar. Ele não carrega `data.table`, `AER`, `stargazer` nem `sandwich` quando o script roda. Sem o `library`, o `fread`, o `lm` com os testes e o `stargazer` param com função não encontrada.

O README foi atualizado e enviado no commit `b2b813f`: https://github.com/pedroberta/Econometria_1

Ele agora descreve o `baixar_bases.R` com os três zips do TSE, a busca do CSV na pasta do projeto ou em `Dados/`, a pasta `figuras/` e a diferença entre instalar pelo `requirements.txt` e carregar com `library`. Confira se essa descrição está certa.

---

**User**

ué, mas se eu der um pip install -r requirements ele não vai baixar todas as bibliotecas que precisamos?

---

**Cursor**

Subetapa 14.2 — papel: ferramenta. `pip install -r requirements.txt` não instala o que esse trabalho usa. O `pip` baixa pacotes de Python. `data.table`, `AER`, `stargazer` e `sandwich` são pacotes de R.

O `requirements.txt` aqui só guarda a lista dos nomes. Quem instala é o R:

```r
install.packages(c("data.table", "AER", "stargazer", "sandwich"))
```

Depois disso, o `Trabalho_Final.R` ainda precisa das linhas `library` para carregar cada pacote na sessão. Instalar e carregar são dois passos.

---

**User**

então o requirements é inutil?

---

**Cursor**

Subetapa 14.2 — papel: ferramenta. Para o que você queria, um comando que instala tudo, o `requirements.txt` não faz esse trabalho. Ele só guarda os quatro nomes: `data.table`, `AER`, `stargazer` e `sandwich`.

O `pip` não lê essa lista como pacote de R. Quem instala continua sendo o `install.packages` dentro do R, e quem carrega continua sendo o `library` no `Trabalho_Final.R`.

O arquivo serve como lista escrita no repositório. O README já repete essa lista e o comando de instalação. Se quiser que um script leia o `requirements.txt` e chame o `install.packages`, eu escrevo esse arquivo.

---

**User**

pode apagar então o csv de candidatos, já que ele vai ser baixado posteriormente

---

**Cursor**

Subetapa 14.1 — papel: ferramenta. Vou tirar o CSV de candidatos do repositório, porque o `baixar_bases.R` passa a buscá-lo no TSE, e ajustar o README. A cópia na sua pasta local continua, para o script que você já roda não perder o arquivo.

Subetapa 14.1 — papel: ferramenta. Tirei `consulta_cand_2022_BRASIL.csv` do repositório. O commit é `17cf24a`: https://github.com/pedroberta/Econometria_1

A pasta `Dados/` continua no GitHub, vazia. Os três CSV passam a chegar só pelo `baixar_bases.R`. O README foi atualizado nesse mesmo commit.

O arquivo na sua pasta local não foi apagado. O `Trabalho_Final.R` que você já roda continua achando ele aí. Quem clonar o repositório do zero precisa rodar o `baixar_bases.R` antes.

---

**User**

não entendi esse gitgnore, ele é necessário?

---

**Cursor**

Subetapa 14.1 — papel: ferramenta. O `.gitignore` não faz o trabalho rodar. Ele só diz ao Git quais arquivos não enviar no próximo commit.

No repositório ele ignora os três CSV, qualquer `.zip`, a pasta `figuras_tmp` e o `_ver_figuras.R`. Sem isso, um `git add` da pasta inteira tenta subir de novo a base de votos, a de despesas e o zip do TSE. O envio quebra no limite de 100 MB, ou o CSV de candidatos volta para o GitHub depois de você ter pedido para tirá-lo.

Pode apagar o arquivo. O script e o README continuam iguais. A proteção contra reenviar as bases é que some.

---

**User**

o que é esse aqui? Rscript Trabalho_Final.R

---

**Cursor**

Subetapa 14.2 — papel: ferramenta. `Rscript Trabalho_Final.R` é o comando de terminal que executa o script inteiro, sem abrir o console do R.

`Rscript` é o programa que vem com o R. `Trabalho_Final.R` é o arquivo do trabalho. O terminal precisa estar na pasta do projeto, a mesma em que está esse arquivo. Aí o R lê o script de cima a baixo: carrega os pacotes, monta a base, estima os modelos, grava as figuras e roda os testes.

Dentro do próprio R, o equivalente é:

```r
source("Trabalho_Final.R")
```

Os dois rodam o mesmo arquivo. `Rscript` é a forma de fazer isso pelo terminal. `source` é a forma de fazer isso numa sessão de R que já está aberta.

---

**User**

como eu faço para colocar esse github em meu vscode, como se eu não tivesse ele e testar tudo?

---

**Cursor**

Subetapa 14.1 — papel: ferramenta. Clone o repositório numa pasta nova e abra essa pasta no VS Code. A pasta `Econometria_Projeto` que você já usa fica como está.

1. No VS Code, `Ctrl+Shift+P`, escreva `Git: Clone` e confirme.
2. Cole `https://github.com/pedroberta/Econometria_1.git`.
3. Escolha um lugar que não seja a pasta atual. Por exemplo, a área de trabalho, com o nome `Econometria_1_teste`.
4. Quando o VS Code perguntar se abre o clone, aceite.

Nessa janela nova, o terminal precisa estar na pasta clonada. Aí, no R:

```r
source("baixar_bases.R")
source("Trabalho_Final.R")
```

O primeiro comando baixa os três zips do TSE, extrai só o CSV do Brasil para `Dados/` e apaga o zip. O de votos descompactado tem cerca de 4,3 GB, então o teste usa bastante disco e pode demorar. O segundo comando é o trabalho inteiro. Os pacotes já instalados neste R continuam valendo. As figuras aparecem em `figuras/`.

---

**User**

```chat_selection
agent_id: bbf2d8ad-260f-4cbf-8be9-43f61a445f8b
selected_text:
No VS Code, Ctrl+Shift+P, escreva Git: Clone e confirme.
```
  não deu certo essa parte, aparece que o comando não existe

---

**Cursor**

Subetapa 14.1 — papel: ferramenta. Esse atalho só aparece quando a extensão de Git do VS Code está ativa. Dá para clonar pelo terminal, que neste computador já tem o Git.

1. No VS Code, abra o terminal com `Ctrl+``.
2. Cole este comando e tecle Enter:

```powershell
git clone https://github.com/pedroberta/Econometria_1.git "$env:USERPROFILE\Econometria_1_teste"
```

A pasta nova fica em `C:\Users\pedro\Econometria_1_teste`, fora do projeto que você já usa.

3. No menu, **File → Open Folder** e escolha essa pasta.

Quando ela abrir, o terminal dessa janela deve estar dentro dela. Aí, no R:

```r
source("baixar_bases.R")
source("Trabalho_Final.R")
```

Se o `git clone` responder que o comando não existe, cole a mensagem inteira.

---

**User**

deu esse erroPS C:\Users\pedro\OneDrive\Área de Trabalho\Econometria_teste> install.packages(c("data.table", "AER", "stargazer", "sandwich"))
c : O termo 'c' não é reconhecido como nome de cmdlet, função, arquivo de script ou programa operável. Verifique a grafia do nome ou, se um caminho tiver 
sido incluído, veja se o caminho está correto e tente novamente.
No linha:1 caractere:18
+ install.packages(c("data.table", "AER", "stargazer", "sandwich"))
+                  ~
    + CategoryInfo          : ObjectNotFound: (c:String) [], CommandNotFoundException
    + FullyQualifiedErrorId : CommandNotFoundException

---

**Cursor**

Subetapa 5.3 — papel: tutora. Esse comando é do R, e o terminal em que você colou é o PowerShell. O `PS` no começo da linha mostra isso. O PowerShell leu o `c(...)` como um programa e respondeu que não o encontrou.

No mesmo terminal, cole esta linha. Ela chama o R só para instalar os pacotes:

```powershell
& "C:\Program Files\R\R-4.5.1\bin\x64\Rscript.exe" -e "install.packages(c('data.table', 'AER', 'stargazer', 'sandwich'))"
```

Para os comandos seguintes do trabalho, entre no R de verdade:

```powershell
& "C:\Program Files\R\R-4.5.1\bin\x64\R.exe"
```

O prompt deixa de ser `PS ...>` e vira `>`. Aí sim:

```r
source("baixar_bases.R")
source("Trabalho_Final.R")
```

Esses dois `source` precisam rodar com o terminal já dentro da pasta `Econometria_teste`.

---

**User**

> source("baixar_bases.R")
Error in file(filename, "r", encoding = encoding) : 
  cannot open the connection
In addition: Warning message:
In file(filename, "r", encoding = encoding) :
  cannot open file 'baixar_bases.R': No such file or directory
> source("baixar_bases.R")  
Error in file(filename, "r", encoding = encoding) : 
  cannot open the connection
In addition: Warning message:
In file(filename, "r", encoding = encoding) :
  cannot open file 'baixar_bases.R': No such file or directory
>  está dando esses erros, voce consegue entrar nesse vscode que estou fazendo e checar o que é

---

**Cursor**

Subetapa 5.3 — papel: tutora. O R não achou `baixar_bases.R` na pasta em que a sessão está. Vou ver o que existe em `Econometria_teste`.

Subetapa 5.3 — papel: tutora. O arquivo existe. A sessão do R está na pasta de cima, e o script está uma pasta abaixo.

O clone ficou em `Econometria_teste\Econometria_1`. Nessa pasta interna estão `baixar_bases.R`, `Trabalho_Final.R`, `Dados` e `Regras`. O `source` procura `baixar_bases.R` na pasta atual. Como o R está em `Econometria_teste`, ele não vê o arquivo.

No R, onde o prompt é `>`, rode:

```r
setwd("Econometria_1")
getwd()
source("baixar_bases.R")
```

O `getwd()` precisa terminar em `Econometria_1`. Se o `setwd` disser que a pasta não existe, cole o resultado de `getwd()`.

Na próxima vez, no VS Code use **File → Open Folder** e escolha a pasta `Econometria_1`, não a `Econometria_teste`.

---

**User**

ok, mas isso é apenas um erro aqui que eu cometi, ele não vai acontecer quando eles forem corrigir, correto?

---

**Cursor**

Subetapa 5.3 — papel: tutora. Esse erro foi só da pasta que você abriu. Não está no repositório.

O `git clone` criou `Econometria_1` dentro de `Econometria_teste`. O R ficou na pasta de fora, e `baixar_bases.R` está na de dentro. Por isso o `source` não achou o arquivo.

Quem for corrigir clona `https://github.com/pedroberta/Econometria_1.git` e abre a pasta que o Git cria, a que já contém `Trabalho_Final.R` e `baixar_bases.R`. Nessa pasta, `source("baixar_bases.R")` encontra o arquivo. O README diz para usar essa pasta como diretório de trabalho.

---

**User**

bom, acho que agora conclui seu uso por completo

---

**Cursor**

Subetapa 14.3 — papel: tutora. O uso da conversa pode parar por aqui.

O que fica com vocês é conferir o README e, na entrega, o link público desta conversa. No topo desta janela, os três pontos, **Share**, depois **Public**. O endereço começa com `cursor.com/s/`. Se essa opção não aparecer, o plano não gera o link, e o caminho é exportar a conversa e publicar o arquivo com acesso aberto.

