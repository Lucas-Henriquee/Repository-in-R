            #---------------------------------------------------# 
            #       Laboratório de Estatística (EST-064)        #
            # Fatores, Listas, Data Frames - Aula 09 - 17/05/24 #
            #---------------------------------------------------#

# Fatores (estrutura de dados para variável categórica [nominal ou ordinal])

## Codificando níveis de dor por exemplo
dor <- c(0, 3, 2, 2, 1)
fdor <- factor(dor, level = 0:3)
fdor

## Alteração no nível do fator
levels(fdor) <- c("nunhum", "level", "medio", "grave")
fdor
levels(fdor)
as.numeric(fdor)

plot(fdor)
plot(dor)


## Fator ordenado
nivel <- c("b", "m", "b", "b", "b", "b", "m", "b", "m", "m", "m", "m", "m", "m", "a", "a", "b", "m", "m", "b", "a")
is.factor(nivel)
is.character(nivel)
fnivel <- factor(nivel)
levels(fnivel)

## Criando fator com a ordem correta de niveis
fnivel.ord <- factor(nivel, level = c("b", "m", "a"))
levels(fnivel.ord)

## ordenando fator
fnivel.ord2 <- ordered(fnivel, levels = c("b", "m", "a"))
levels(fnivel.ord2)


# Lista

## sample -> escolha aleatória
set.seed(666)
peso <- sample(65:72, size = 15, replace = T)
table(peso)

biometria <- round(matrix(c(rnorm(15, 65, 5), rnorm(15,170,5)), ncol = 2, byrow= F), 2)
biometria

w <- list(nome = "a", numeros = peso, matriz = biometria, idade = 15)

## Formas de obter a matriz a partir de w (indexação)
w$matriz
w[[3]]
w[["matriz"]]


# Data Frames (variáveis em colunas e observação em linhas no DataFrame)
str(iris)
names(iris)
head(iris[-5])
dim(iris)

hist(iris$Petal.Width, freq = F)
## ou
hist(iris[[4]], freq = F)

lines(density(iris[[4]]))

variaveis <- names(iris[-5])
variaveis

## Fazendo o plot para 4 gráficos em uma só figura
par(mfrow = c(2,2))
for(i in 1:4){
  hist(iris[[i]], freq = FALSE, main = variaveis[i], ylab = "Densidade", xlab = "Dimensão")
  lines(density(iris[[i]]))
}

par(mfrow = c(1,1))

## Criando um DataFrame a partir de outro, iseririndo e plotando o gráfico
iris$Sepal.Width[1:5]
iris.my <- iris
volume <- apply(iris[-5], 1, FUN = prod)
hist(volume, freq =F)
iris.my$vol <- volume
iris.my

plot(Petal.Length ~ vol, data = iris.my, col = c("red", "blue", "black")[as.numeric(iris.my$Species)])

iris.my$Sepal.Width[-(200:100)]

summary(iris.my)

## Funcções Gráficas
criterio <- iris.my$Petal.Length > 5.1
iris.my[criterio,]

criterio <- iris.my$Petal.Length > 6
iris.my[criterio,]

quais <- which(iris.my$Petal.Length > 6)
quais

text(x = iris.my$vol[quais], y = iris.my[[3]][quais], label = quais, cex = 0.85)

# Ordenação
peso <-c(62, 68, 66, 63, 54, 53, 52)
sort(peso, decreasing = T)

## Ver diferença entre order e rank
ordem <- order(peso)
peso[ordem]
rank(peso)

# Criação do DataFrame
data.frame(x1 = peso, x2 = ordem)

# Instalando o gapminder
install.packages("gapminder")

# Exportação de Banco de Dados

write.table(mtcars, "mtcars.txt", sep = "\t")
## ou
write.table(mtcars, "mtcars.txt", dec = ",", sep="\t")

write.csv(mtcars, "mtcars.csv")
## ou
write.csv2(mtcars, "mtcars2.csv")

library(foreign)
write.foreign(mtcars, "mtcars.txt", "mtcars.sps", package = "SPSS")

write.dta(mtcars, "mtcars.dta")

# Comando sink
sink('analise-saida.txt')
set.seed(12345)
x <- rnorm(10, 10, 1)
y <- rnorm(11, 11, 1)
cat(sprintf("x tem %d elementos: \n", length(x)))
print(x)
cat("y = ", y, "\n")
cat("==================================\n")
cat("Teste-t entre x e y\n")
cat("===============================")
t.test(x, y)
sink()
