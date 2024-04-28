                #-------------------------------------#
                # Trabalhando com vetores - EST064    #
                # Atividade 02 - 28/04/2024           #
                #-------------------------------------#

# Criação de vetores:

## Criando vetor com os valores de 1 à 20
vet1 <- 1:20
vet1


## Criando vetor com os valores de 20 à 1 com e sem a funcção rev(inverter valores do vetor)
vet2 <- 20:1
vet2

vet2 <- rev(vet1)
vet2


## Criando vetor com os valores de 20....1...20
vet3 <- 1:20
vet3 <- c(vet3, rev(vet3))
vet3


## Criando o vetor e atribuindo o nome de "tmp" a ele
vet4 <- c(4,6,3)
tmp <- vet4
tmp


## Criando vetor com a função rep com 10 ocorrências de 4
vet5 <- rep(tmp, c(10))
vet5


## Criando vetor com a função rep com 11 ocorrências de 4, 10 ocorrências de 6 e 10 ocorrências de 3.
vet6 <- rep(tmp, length.out = 31)
vet6



## Criando vetor com a função rep com 10 ocorrências de 4, 20 ocorrências de 6 e 30 ocorrências de 3
vet7 <- rep(tmp, c(10,20,30))
vet7

# Criando um vetor dos valores de e^x*cos(x) , para x = 3;3,1;3,2;...;6.
x <- seq(3, 6, by = 0.1)
vet8 <- exp(x) * cos(x)
vet8 


# Criando um vetor com a seguinte expressão: (0.1^3*0.2^1; 0.1^6*0.2^4,..., 0.1^36*0.2^34)
expoente <- seq(3, 36, by = 3)
vet9 <- (0.1^expoente) * (0.2^(expoente - 2))
vet9


# Criando um vetor com a seguinte expressão: (2, (2^2)/2, (2^3)/3,...., (2^25)/25)
n <- 1:25
vet10 <- (2^n)/n
vet10


# Calculando os somatórios
i_a <- 10:100
somatorio_a <- sum(i_a^3 + 4*i_a^2)
somatorio_a

i_b <- 1:25
somatorio_b <- sum((2 ^ i_b)/i_b + (3 ^ i_b)/i_b^2)
somatorio_b


# Usando a função paste para criar vetores de comprimento 30
n <- 1:30

vet11 <- paste("rotulo", n)
vet11

vet12 <- paste0("fn", n)
vet12


# Maneira mais conveniente para inserir um valor entre dois elementos em uma data posição no vetor
vet13 <- c(1,2,3,5,6)
posicao <- 3
vet13 <- append(vet13, 4, after = posicao)
vet13


# Conjunto de dados juul{ISwR}
data(juul, package = "ISwR")

linhas <- which(juul$sex == 2 & juul$age >= 7 & juul$age <= 14)
linhas

df <- subset(juul, sex == 2 & age >= 7 & age <= 14)
media<- mean(df$igf1, na.rm = TRUE)
media
