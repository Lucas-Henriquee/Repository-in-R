paste("car1", "car2", sep= ",")
paste0("car1", "car2")


paste("Este é", "1","de", "4", "exemplos")
paste0("Este é", "1","de", "4", "exemplos")

paste0("variavel.", 1:5)

vetor <- c("outro", "exemplo", "com", "um", "vetor")
paste(vetor)


paste(vetor, collapse = " ")

install.packages("ISwR")

library(ISwR)
head(juul)


# importante se vc nao quer instalar o pacote e quer usar so uma funcao
data(diamonds, package = "ggplot2")
head(diamonds)

summary(diamonds)

str(diamonds)
names(diamonds)

dim(diamonds)


plot(price ~ carat, data = as.data.frame(diamonds))

plot(price ~ carat, data = as.data.frame(diamonds), pch = ".")


diam.ml <- lm(price ~ carat, data = diamonds)
abline(diam.ml, lwd= 2)



plot(log(price) ~ carat, data = as.data.frame(diamonds), pch = ".")
diam.ml <- lm(log(price) ~ carat, data = diamonds)
abline(diam.ml, lwd= 2)



xis <- rnorm(100, mean = 15, sd= 5)

hist(xis, freq = F)

MASS::truehist(xis)

help(package = "MASS")

vet.i <- 5:100
sum(2*vet.i + 4*vet.i^2)

xis <- rnorm(100, mean = 15, sd = 5)

x.barra <- mean(xis)
sum(((xis - x.barra)/sd(xis))^3)


xis.exp <- rnorm(100, mean = 15, sd = 5)

x.barra <- mean(xis)
sum(((xis.exp - x.barra)/sd(xis))^3)