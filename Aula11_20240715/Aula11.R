            #---------------------------------------------------# 
            #       Laboratório de Estatística (EST-064)        #
            #   Amostragem, comando Sample() - Aula11 15/07/24  #
            #---------------------------------------------------#


# Amostragem com reposição
especies <- levels(iris$Species)
amostra <- sample(x = especies, size = 150, replace = TRUE)
table(amostra)
classifica <- sample(x = especies, size = 150, replace = TRUE)

# Amostragem sem reposição
indices <- sample(1:150, size = 150, replace = FALSE)
embaralha <- iris[indices, 5]
embaralha


# Comparando amostragem com e sem repetição
cbind(as.character(embaralha), classifica)

## ou
embaralha == classifica
sum(embaralha == classifica)
mean(embaralha == classifica)


# Conjunto diamonds
data(diamonds, package = "ggplot2")
names(diamonds)

plot(price ~ carat, data = diamonds, pch = 21, col = "lightgray") 

dim(diamonds)
str(diamonds)
mean(diamonds$price)
mean(diamonds$carat)

with(diamonds, cor(price, carat))


## Amostra de tamanho do conjunto Diamonds
linhas <- sample(1:nrow(diamonds), size = 50, replace = FALSE)
sub_amostra <- diamonds[linhas, c("price", "carat")]
sub_amostra

price.bar <- mean(sub_amostra$price)
carat.bar <- mean(sub_amostra$carat)
cor.sub <- with(sub_amostra, cor(carat, price))

c(peso = carat.bar, preco = price.bar, correl = cor.sub)

plot(price ~ carat, data = sub_amostra)

# Limpando tudo
rm(list = ls())
data(diamonds, package = "ggplot2")

# Criando um função
sorteia <- function(n = 50){
  rm(list = ls())
  data(diamonds, package = "ggplot2")
  linhas <- sample(1:nrow(diamonds), size = 50, replace = FALSE)
  sub_amostra <- diamonds[linhas, c("price", "carat")]
  price.bar <- mean(sub_amostra$price)
  carat.bar <- mean(sub_amostra$carat)
  cor.sub <- with(sub_amostra, cor(carat, price))
  c(peso = carat.bar, preco = price.bar, correl = cor.sub)
}

for(i in 1:10) print(sorteia())


matriz <- replicate(1E3, sorteia(n = 50))
matriz
is.matrix(matriz)
dim(matriz)

amostras <- t(matriz)
amostras

# Criando Histograma do carat
hist(amostras[, 1], freq = FALSE, breaks = 20)

price_global <- mean(diamonds$price)
carat_global <- mean(diamonds$carat)

abline(v = carat_global, lty = 2, lwd = 2)

price_dp <- sd(diamonds$price)
price_dp

carat_dp <- sd(diamonds$carat)
carat_dp

curve(dnorm(x, mean = carat_global, sd = carat_dp/sqrt(50)), from = 0.6, to = 1.1, col = "blue", add =T)

quantile(amostras[, 1], probs = c(0.25, 0.975))

# Criando Histograma da correlação
cor.global <- with(diamonds, cor(price, carat))
hist(amostras[, 3], freq = F, breaks = 20, xlim = c(0.7, 1))
abline(v = cor.global, lty = 2, lwd = 2)

min(amostras[, 3])
quantile(amostras[, 3], probs = c(0.25, 0.975))


# Atividade Extra - Aniversário no mesmo dia
prod(365:326)/(365^40)

aniversarios <- sample(1:365, size = 26, replace = TRUE)
aniversarios

coincide <- sum(duplicated(aniversarios)) > 0
coincide