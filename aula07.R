        #---------------------------------------------------#
        #       Laboratório de Estatística (EST-064)        #
        #     Operadores lógicos - Aula 07 - 06/05/204      #
        #---------------------------------------------------#


# Operados relacionais

set.seed(666)
amostra <- rnorm(n = 100, mean = 0, sd = 1)
length(amostra)

amostra[25]

amostra[c(25, 73)]

criterio <- amostra >= 0
criterio


# Quantos valores são maiores ou iguais a zero
# sum(): soma verdades
sum(criterio)

as.numeric(criterio)

mean(criterio)

# Complementar de criterio
!criterio

# Criar uma tabelas com eles valores
cbind(amostra, criterio, !criterio)


(amostra[criterio])

indice <- 1:100
maior.0 <- indice[criterio]


amostra[maior.0]


which(amostra >= 0)

seq_along(amostra)


# Operados lógicos
# ! -> !
# & -> and
# | -> or

any(amostra > 3)
all(amostra > 0)

# Máximos e Mínimos da amostra
range(amostra)

# Amplitude (máx - min)
diff(range(amostra))

# Condições para usar o &
criterio.2 <- (amostra >= -1) & (amostra <= 1)
criterio.2

# Valores entre -1 e 1
amostra[criterio.2]

# Quantos valores entre -1 e 1
length(amostra[criterio.2])
sum(criterio.2)

# Probabilidade do valor ser entre -1 e 1
pnorm(c(-1,1), mean = 0, sd = 1)
diff(pnorm(c(-1, 1), mean = 0, sd = 1))

# Calculando o valor que está abaixo de p = 2,5%
qnorm(p = 0.025, mean = 0, sd = 1)

# Calculando o valor que está acima de p = 2,5%
qnorm(p = 1 - 0.025, mean = 0, sd = 1)

# Calculando para a amostra quais são os dados correspondentes
quantile(amostra, probs = c(0.025, 1 - 0.025))

# Alguns comandos para o boxplot
boxplot(amostra)
fivenum(amostra)
median(amostra)
quantile(amostra)

# Algumas operações no R
(as.complex(-1))^(1/3)
raizes <- c(0.5 + 0.8662i, -1, 0.5 - 0.8662i)
raizes
raizes ^ 3
abline(h = 0, v = 0)

# Permite que a escala de X e Y sejam iguais asp = T
plot(raizes, asp = T)
abs(raizes)

Arg(raizes)

exp(pi*1i)
