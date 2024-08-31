             
              # ------------------------------------------
              #    EST-064 - Laboratório de Estatística
              #    Aula03 - Vetores 25/03/2024
              # ------------------------------------------

              
# Algumas comandos do R
              
str(iris) # Iris - Um banco de dados existente em R # Str - Exibir o conteudo de um banco de dados/vetor/etc
help(iris)        
dim(iris) # Dim - Dimensao do vetor/banco de dados
tail(iris) #Retorna a primeira/ultima parte do vetor/banco de dados/etc

plot(faithful)

ajuste <- lm(waiting ~ eruptions, data = faithful)

str(ajuste)

ajuste $ coefficients
ajuste $ residuals

hist(ajuste $ residuals)


# Estrutura Vetor

xis <- 40-> x0

xis
x0

x1 <- -1*xis
x2 <- x0 + 2
z <- x1 + x2
result <-  xis**x1 + (z/x2)
result


# Função em R

funcao <- function(xis){
  
  x0 <- xis
  x1 <- -1*xis
  x2 <- x0 + 2
  z <- x1 + x2
  
  result <- xis**x1 + (z/x2)
  result # ou colocar parenteses antes da expressao toda (result <- xis**x1 + (z/x2)) para exibir o resultado
  
}

# Chamada da função
funcao(4)
funcao(40)


getwd() # Caminho do diretorio
dir() # Pastas do diretorio que estou
ls() # Mostra todos os objetos que estou utilizando

rm(xis) #Limpar o objetos em especifico 
ls()
xis
rm(x1, x2, z)
ls()

rm(list = ls(all = TRUE)) #Limpar todos os nomes de objetos do programa
ls()

# Criando um vetor idade (tipo inteiro) e um vetor sexo (tipo caractere)
idade <- c(20, 20, 22, 24, 21, 23, 19, 20, 20)
sexo <- c("F", "M", "M", "F", "F", "M", "F", "F", "M")

str(idade)
length(idade) # Tamanho vetor/banco de dados/funcao/etc

vazio <- NULL # Criando um objeto vazio
str(vazio)
length(vazio)


str(sexo)
length(sexo)

# trabalhando com sequencia 

help(seq)
seq(from =  1, to = 1 , length.out = NULL, by = ((to - from)/(length.out - 1)), along.with = NULL)
seq()

seq(from = 1, to = 100, by = 1)
seq(from = 1, to = 1000, by = 2)

seq(from = 1, length.out = 1000, by = 2)

seq(from = 0, to = 1, length.out = 11)

seq(17)

seq_len(17)

seq_along(idade)

seq(from = 10, length.out=10, by = 10)

seq(10)

seq(100)*2

(seq(100)*2)-1

1:100

seq(from = 20, to = 1, by = -1)