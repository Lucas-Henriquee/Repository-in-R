              #-------------------------------------#
              #  Estruturas de Dados em R - EST064  #
              #    Atividade 04 - 28/05/2024        #
              #-------------------------------------#

# 1) Criando data frame

## Utilizando as funções `read.csv()` e `read.table()` para importar os dados diretamente da URL:
url <- "https://www.stat.auckland.ac.nz/~wild/d2i/FutureLearn/Census.at.School.500_ages9-15.csv"

census_csv <- read.csv(url)

dim(census_csv)
names(census_csv)  

census_table <- read.table(url, sep = ",", header = TRUE)
head(census_table)

## Utilizando a função `file.choose()` para fazer uma importação local dos dados:
census_local <- read.csv(file.choose())  # Importando o arquivo local do diretório do PC.

dim(census_local)    # Dimensão do conjunto (Linha X Coluna)

names(census_local)    # Nomes das variáveis

census_table2 <- read.table(file.choose(), sep = ",", header = TRUE)
head(census_table2)

# 2) Operações com o conjunto de dados `skulls{ade4}`.

## Manipulando os dados do conjunto de dados:




