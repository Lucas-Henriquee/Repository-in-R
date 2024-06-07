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

data(skulls, package = "ade4")
head(skulls)


names(skulls) <- c("ACr", "BBr", "BAl", "ANs")
head(skulls)

periodo <- factor(rep(1:5, each = 30), labels = c("período pré-dinástico primitivo", 
                                                  "período pré-dinástico antigo", 
                                                  "12ª e 13ª dinastias", 
                                                  "período Ptolemaico", 
                                                  "período Romano"))
skulls$periodo <- periodo
head(skulls)

idade <- rep(c(-4000, -3300, -1850, -200, 150), each = 30)

skulls$idade <- idade
head(skulls)

## Ampliando a análise exploratória desses dados:

medias_periodo <- aggregate(cbind(ACr, BBr, BAl, ANs) ~ periodo, data = skulls, mean)
rownames(medias_periodo) <- c("Primitivo", "Antigo", "Dinastias", "Ptolemaico", "Romano")

medias_periodo    # Matriz (tabela) 

medias_idade <- aggregate(cbind(ACr, BBr, BAl, ANs) ~ idade, data = skulls, mean)

plot(medias_idade$idade, medias_idade$ACr, type = "o", col = "blue",
     ylim = range(medias_idade[,2:5]), xlab = "Idade", ylab = "Médias das Medidas",
     main ="Médias das Medidas ao longo do Tempo")
lines(medias_idade$idade, medias_idade$BBr, type = "o", col = "red")
lines(medias_idade$idade, medias_idade$BAl, type = "o", col = "green")
lines(medias_idade$idade, medias_idade$ANs, type = "o", col = "purple")

legend("topright", legend = c("ACr", "BBr", "BAl", "ANs"), 
       col = c("blue", "red", "green", "purple"), lty = 1)



# 3) Operações com os comandos `scan()` e `lower.tri()`.

dados <- scan("E9-14.DAT")
dados

n <- 6
R <- matrix(0, n, n)
R[lower.tri(R, diag = TRUE)] <- dados
R <- R + t(R) - diag(diag(R))
R

## Calculando o traço e o determinante da matriz de  correlações R:

traco <- sum(diag(R))
traco                      # Traço da matriz R.

determinante <- det(R)
determinante               # Determinante da matriz R.

## Calculando os autovetores com o comando `eigen()` e calculando a  proporção com o traço da matriz R:

eigen_ <- eigen(R)

autovetores <- eigen_$vectors
autovetores                # Autovetores da matriz R.

proporcao_autovetores <- autovetores / sum(autovetores)
proporcao_autovetores      # Proporção de cada autovetor em relação ao traço.

## Comparando o traço da matriz R com a soma de seus autovalores e o determinante da matriz R com o produto de seus autovalores:

autovalores <- eigen_$values
autovalores                # Autovalores da matriz R.

soma_autovalores <- sum(autovalores)

soma_autovalores           # Soma dos autovalores da matriz R.

traco                      # Traço.



# 4) Conjunto de dados `cars{datasets}`.

data(cars)

## Construindo um gráfico de dispersão de `speed` por `dist`:

plot(cars$speed, cars$dist, main = "Gráfico de Dispersão: Velocidade vs. Distância",
     xlab = "Velocidade, em mph", ylab = "Distância de Parada, em ft", col= "red", pch = 17)

## Construindo um gráfico e aplicando os modelos linear e quadrático:

modelo.linear <- lm(dist ~ speed, data = cars)

plot(cars$speed, cars$dist,
     xlab = "Velocidade, em mph",
     ylab = "Distância de parada, em ft",
     main = "Ajuste Linear e Quadrático: Velocidade vs. Distância de parada")

abline(modelo.linear, col = "red", lty = "dotted", lwd = 2)

modelo.quadratico <- lm(dist ~ speed + I(speed^2), data = cars)

lines(cars$speed, predict(modelo.quadratico), col = "blue", lty = "longdash", lwd = 2)

legend("topright", legend = c("Linear", "Quadrático"),
       col = c("red", "blue"), lty = c("dotted", "longdash"), lwd = 2)

## Construindo o gráfico de resíduos:

plot(cars$speed, modelo.linear$residuals, xlab = "Velocidade, em mph",
     ylab = "Resíduos", main = "Gráfico de Resíduos do Ajuste Linear")

abline(h = 0, col = "blue", lwd = 3)

extremos_positivos <- order(modelo.linear$residuals, decreasing = TRUE)[1:2]
text(cars$speed[extremos_positivos], modelo.linear$residuals[extremos_positivos],
     labels = "POS", col = "blue")

extremo_negativo <- which.min(modelo.linear$residuals)
text(cars$speed[extremo_negativo], modelo.linear$residuals[extremo_negativo], 
     labels = "NEG", col = "red")




# 5) Gráfico com função de probabilidade


## Aplicando as função `curve()` para apresentar as densidades Beta(2,6), Beta(4,4) e Beta(6,2):

curve(dbeta(x, 2, 6), from = 0, to = 1, ylab = "Densidade", xlab = "x")

curve(dbeta(x, 4, 4), from = 0, to = 1, add = TRUE)

curve(dbeta(x, 6, 2), from = 0, to = 1, add = TRUE)

## Adicionando título no gráfico:

curve(dbeta(x, 2, 6), from = 0, to = 1, ylab = "Densidade", xlab = "x")

curve(dbeta(x, 4, 4), from = 0, to = 1, add = TRUE)

curve(dbeta(x, 6, 2), from = 0, to = 1, add = TRUE)

title(expression(f(y) == frac(1, B(a, b)) * y^{a-1} * (1-y)^{b-1}))

## Adicionando rótulos a cada uma das curvas com a função `text()`:

curve(dbeta(x, 2, 6), from = 0, to = 1, ylab = "Densidade", xlab = "x")
curve(dbeta(x, 4, 4), from = 0, to = 1, add = TRUE)
curve(dbeta(x, 6, 2), from = 0, to = 1, add = TRUE)

title(expression(f(y) == frac(1, B(a, b)) * y^{a-1} * (1-y)^{b-1}))

text(0.1, dbeta(0.1, 2, 6) + 0.1, "Beta(2, 6)")
text(0.5, dbeta(0.5, 4, 4) + 0.1, "Beta(4, 4)")
text(0.9, dbeta(0.9, 6, 2) + 0.1, "Beta(6, 2)")

## Refazendo o gráfico do item (a), adicionando cores e tipos de linha diferentes para cada uma das três curvas:

curve(dbeta(x, 2, 6), from = 0, to = 1, ylab = "Densidade", xlab = "x", col = "blue", lty = 1)
curve(dbeta(x, 4, 4), from = 0, to = 1, add = TRUE, col = "red", lty = 2)
curve(dbeta(x, 6, 2), from = 0, to = 1, add = TRUE, col = "green", lty = 3)

title(expression(f(y) == frac(1, B(a, b)) * y^{a-1} * (1-y)^{b-1}))

## Adicionando legenda sem usar a função `text()`:

curve(dbeta(x, 2, 6), from = 0, to = 1, ylab = "Densidade", xlab = "x", col = "blue", lty = 1)
curve(dbeta(x, 4, 4), from = 0, to  = 1, add = TRUE, col = "red", lty = 2)
curve(dbeta(x, 6, 2), from = 0, to = 1, add = TRUE, col = "green", lty = 3)

title(expression(f(y) == frac(1, B(a, b)) * y^{a-1} * (1-y)^{b-1}))

legend("topright", legend = c("Beta(2, 6)", "Beta(4, 4)", "Beta(6, 2)"),
       col = c("blue", "red", "green"), lty = c(1, 2, 3))