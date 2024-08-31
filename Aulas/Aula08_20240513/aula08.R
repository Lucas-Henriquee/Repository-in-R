          #---------------------------------------------------# 
          #       Laboratório de Estatística (EST-064)        #
          #   Infinito, Matriz e Array - Aula 08 - 13/05/24   #
          #---------------------------------------------------#


integrate(dnorm, lower = 0, upper = Inf)$value

# Verificando infinito em R
2/0

Inf - Inf

# Testando valores de infinito e finitos
is.finite(10 ^ (305:310))
is.infinite(10 ^ (305:310))


# Fatorial 
factorial(10000)
prod(1:10000)

log(prod(1:10000)) - log(prod(1:9999))

# Função gama para calcular números grandes - (n-1)!
h = lgamma(10001) - lgamma(10000)
exp(h)

# Operação com choose (operação binomial (n/k)) - Ver documentação choose
choose(10000, 9999)

lfactorial(10000)


# Valores indeterminados
0:4 / 0

is.nan(0:4 /0)

is.infinite(0:4 / 0)
is.finite(0:4 / 0)

x <- NA
x
x + 4

# Media com valores NA no meio do vetor (na.rm = TRUE - Retira os NA da média)
vetor <- c(4, 5, 6, 7, 8, NA)
mean(vetor)

mean(vetor, na.rm = TRUE)

# Valores NA no conjunto de dados
data(juul, package = "ISwR")

summary(juul)
dim(juul)

obs.completo <- complete.cases(juul)
sum(obs.completo)   # Mostra q nenhuma linha está completa no conjunto de dados

# Criando uma matriz (não precisa criar com nrow apenas ncol)
y <- matrix(1:20, ncol = 4)

celulas <- c(1, 26, 24, 68)
rnomes <- c("R1", "R2")
cnomes <- c("C1", "C2")
minha.matriz <- matrix(celulas, ncol = 2, byrow = TRUE)
colnames(minha.matriz) <- cnomes
rownames(minha.matriz) <- rnomes
minha.matriz

# Saber os nomes das linhas e colunas
colnames(minha.matriz)
rownames(minha.matriz)

# Matriz a partir da combinação de objetos
nomes <- c("Lucas", "Ramon", "L.Henrique", "Josi", "Milena", "Bruna", "Francielli" )
peso <- c(62, 68, 66, 63, 54, 53, 52)
altura <- c(172, 173, 183, 170, 165, 148, 160)
sexo <- c("M", "M", "M", "F", "F", "F", "F")

imc <- peso/((altura/100)**2)
imc

is.numeric(peso)

biometria <- cbind(peso, altura, imc)
rownames(biometria) <- nomes
colnames(biometria) <- c("Peso", "Altura", "IMC")
biometria

apply(X = biometria, MARGIN = 1, FUN = is.numeric)

apply(X = biometria, MARGIN = c(1,2), FUN = function(x)!is.numeric(x))    

# Alterando um valor na matriz
biometria[2,2] <- NA
biometria

apply(X = biometria, MARGIN = c(1,2), FUN = is.na)  

eh.na <- apply(X = biometria, MARGIN = c(1,2), FUN = is.na)  
biometria[eh.na]

# Qual o elemento da matriz
which(eh.na)

# Voltando o valor original 
biometria[2, 2] <- 173

# Pegar a matriz e transformar em um único vetor
c(biometria)

# Identificando os elementos pelas linhas e colunas
biometria[3, 2]

# Elementos da segunda coluna
biometria[ , 2]

# Elementos da quarta linha
biometria[4, ]

# ELementos femininos
biometria[4:7, 1:2]

# Peso dos homens
biometria[1:3, c(1,3)]

# Peso e IMC das meninas
meninas <- sexo == "F"
meninas
biometria[meninas, c(1,3)]

# Comandos is com a matriz biometria
is.vector(biometria)
is.matrix(biometria)
is.data.frame(biometria)

# Transformando "as" de uma matriz para um vetor por exemplo
as.vector(biometria)
biometria

# Verificações importantes quando se importa dados
dim(biometria)
str(biometria)
head(biometria) # Primeiras 6 linhas 
tail(biometria) # Últimas 6 linhas

# Construção de matriz de zeros
zeros <- matrix(0, 3, 2)
zeros

# Matriz diagonal
m1 <- diag(2:3)
m1
m2 <- diag(2, nrow = 3)
m2

# Matriz identidade
m3 <- diag(4)
m3

# Matriz diagonal do desvio padrão de iris
dim(iris)
str(iris)
head(iris)
tail(iris)
summary(iris)
desvios <- apply(iris[-5], MARGIN = 2, FUN = sd)
desvios
diag(desvios)


# Arrays (matrizes de mesmo tamanho)
iris3
dim(iris3)
is.matrix(iris3)
is.data.frame(iris3)
is.array(iris3)
str(iris3)
head(iris3)
tail(iris3)
iris3[ , , 3]
iris3[ , 2, ]

# Média global de sw com iris
mean(iris[ , 2])

# Média sw por espécie com iris
aggregate(Sepal.Width ~ Species, data = iris, FUN= mean)
# ou
tapply(X = iris$Sepal.Width, INDEX = iris$Species, FUN = mean)

# Média global de sw com iris3
mean(iris3[ , 2, ])

# Média sw de cada espécie com iris3
apply(iris3[ , 2, ], MARGIN = 2, mean)


plot(Sepal.Width ~ Species, data = iris)
formula <- "Sepal.Width ~ Species"
plot(as.formula(formula), data = iris)

# Cojunto de dados Titanic
Titanic
dim(Titanic)
str(Titanic)

# Tabela de Contingência
## Crianças não sobreviventes
tab1 <- Titanic[ , , "Child", "No"]
tab1

## Crianças que sobreviveram
tab2 <- Titanic[ , , "Child", "Yes"]
tab2


# Conjunto de dados mtcars
mtcars
dim(mtcars)
str(mtcars)
summary(mtcars)
mtcars$gear <- as.factor(mtcars$gear)
summary(mtcars)

table(mtcars$gear, mtcars$cyl)
tabela <- with(mtcars, table(gear, cyl))
tabela

# Soma das colunas da tabela
colSums(tabela)

# Soma das linhas da tabela
rowSums(tabela)

# Colocando tudo em uma única tabela
soma.c <- colSums(tabela)
soma.r <- rowSums(tabela)
tabela.1 <- cbind(tabela, soma.c)
rbind(tabela.1, c(soma.r, 32))

with(mtcars, ftable(gear, cyl))

tabela.1/32*100

prop.table(tabela.1)

addmargins(tabela)
addmargins(tabela)/32*100

tripla <- with(mtcars, table(cyl, carb, gear))
dim(tripla)
