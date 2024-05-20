        #---------------------------------------------------# 
        #       Laboratório de Estatística (EST-064)        #
        #Importação e Plot de dados e e^x - Aula10 20/05/24 #
        #---------------------------------------------------#

# Importação de dados

##Separador decimal
dec = "." 
dec2 = ","

## Separador dos campos
sep = ";" 
sep2 = ","
sep1 = "\t"

ex01 <- read.table("./Aula10_20240520/gam01.txt")
head(ex01)
dim(ex01)

ex02 <- read.table("./Aula10_20240520/exemplo02.txt", head = T)
head(ex02)
dim(ex02)

ex03 <- read.table("./Aula10_20240520/dadosfic.csv", head = T, sep = ":", dec = ",")
head(ex03)
dim(ex03)

ex04 <- read.table("http://www.leg.ufpr.br/~paulojus/dados/gam01.txt")
head(ex04)
dim(ex04)

teste.data <- read.table("./Aula10_20240520/test2.txt", skip=4, header = T, sep = "\t")
head(teste.data)

aeres.data <- read.csv("./Aula10_20240520/AirPassengers.csv", header = T)
head(aeres.data)
dim(aeres.data)

aeres.data2 <- read.table("./Aula10_20240520/AirPassengers.csv", header = T, sep = ",")
head(aeres.data2)

solo <- read.csv("./Aula10_20240520/solo.csv", header = T, dec = ",", sep = ";" )
head(solo)
dim(solo)

solo2 <- read.csv2("./Aula10_20240520/solo.csv", header = T)
head(solo2)

## Operações
solo <- as.data.frame(solo2[,-1])
dim(solo)
str(solo)

apply(solo[1:3], 1, FUN = sum)

# Plot do gráficos
plot(areia ~ sedimentos, data = solo)
cor(solo$ph, solo$sedimentos)

cor(solo)

ml <- lm(areia ~ sedimentos, data = solo )
ml

abline(ml, lwd = 2, lty = 2, col="blue")

betas <- ml$coefficients

reta <- function(x) {betas[1] + betas[2]*x}
reta(25)

points(x = 25, y = reta(25), pch = 19, col = "red", cex = 2)

segments(x0 = solo$sedimentos, y0 = solo$areia, x1 = solo$sedimentos, y1 = reta(solo$sedimentos), lty = 1, col = "black")
reta(13)
head(solo)

reta(solo$sedimentos)

arrows(x0 = solo$sedimentos, y0 = solo$areia, x1 = solo$sedimentos, y1 = reta(solo$sedimentos), code = 1, angle = 90, length = 0.15)

apply(solo, MARGIN = 2, FUN = mean) # Média aritimética

## Média geométrica
(prod(solo$areia)) ** (1/20)
exp(mean(log(solo$areia)))
apply(solo, MARGIN = 2, FUN = function(x) exp(mean(log(x))))      

## Média harmônica
(1/mean(1/solo$areia))
apply(solo, MARGIN = 2, FUN = function(x) (1/mean(1/x)))


# e^x

integrate(exp, lower = -Inf, upper = 1)

x <- 1:500
(1 + 1/x)**x
plot(x, (1+1/x)**x, cex = 0.85, ylim = c(2.6, 2.8), xlim = c(250,370))
abline(h = exp(1), lty = 2)

n <- 0:10
e10 <- sum(1/factorial(n))

erro <-log10( exp(1) - e10)
erro

curve(exp, from = 0, to = 3)

aproxima <- function(x) 1 + x + (x**2)/2 + (x**3)/6 + (x**4)/24 + (x**5)/120 + (x**6)/720 + (x**7)/5040
curve(aproxima, from = 0, to = 3, lty = 2, col="red", add = T)
abline(h = 1)

# Conjunto de dados mtcars
mtcars
mtcars$cilindro <- as.factor(mtcars$cyl)
mtcars$cambio <- as.factor(mtcars$gear)

meu.df <- mtcars[c(1,6,4,12,13,9)]
head(meu.df)

plot(mpg ~ wt, data = meu.df)
cor.mw <- with(meu.df,cor(mpg, wt))
ml.wt <- lm(mpg ~ wt, data = meu.df)
ml.wt

plot(mpg ~ hp, data = meu.df )
cor.mh <-with(meu.df, cor(mpg, hp))

ml.hp <- lm(mpg ~ hp, data = meu.df)
ml.hp

abline(ml.hp, lty = 2, col ="blue")

dalton <- c("#E1BE6A", "#40B0A6", "#1A85FF")

par(mfrow = c(2,1))

plot(mpg ~ wt, data = meu.df, pch = 19, col = dalton[as.numeric(meu.df$cilindro)])

abline(ml.wt, lty = 2, col = "blue")
text(x = 5, y = 28, label = paste0("r = ", round(cor.mw, 3)), cex = 0.9, font = 2)

plot(mpg ~ hp, data = meu.df, pch = 19, col = dalton[as.numeric((meu.df$cilindro))])
abline(ml.hp, lty = 2, col = "blue")
text(x = 300, y = 28, label = paste0("r = ", round(cor.mh, 3)), cex = 0.9, font = 2)

valores <- aggregate(mpg ~ cilindro, data = meu.df, FUN = mean)
valores

par(mfrow = c(1,1))
plot(mpg ~ cilindro, data = meu.df)

media <- valores[ ,2]
points(x = 1:3, y = media, pch = 19, col = "red", cex = 2)

lines(x = 1:3, y = media, lty = 2)


criterio <- meu.df$cilindro == 4
criterio

i <- 1
vetor <- vector(mode ="numeric", length = 3)
for(cil in c(4,6,8)){
  criterio <- meu.df$cilindro == cil
  vetor[i] <- with(meu.df[criterio, ], cor(mpg, wt))
  i = i +1
}

vetor


i <- 1
vetor <- vector(mode ="numeric", length = 3)
for(cil in c(4,6,8)){
  criterio <- meu.df$cilindro == cil
  vetor[i] <- with(meu.df[criterio, ], cor(mpg, hp))
  i = i +1
}

vetor

