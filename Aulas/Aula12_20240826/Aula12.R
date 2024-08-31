        #---------------------------------------------------# 
        #       Laboratório de Estatística (EST-064)        #
        # Prob. Aniversário e DataFormat - Aula12 26/08/24  #
        #---------------------------------------------------#

# Probabilidade com o dia do aniversário
aniversarios <- sample(1:365, size = 23, replace = TRUE)
aniversarios

## Estimativa com o pbirthday
pbirthday(n = 23)

## Verifica se há duplicados
duplicated(aniversarios)

## Verifica coincidencia
coincide <- min(1, sum(duplicated(aniversarios)))
coincide

#Limpando tudo
rm(list = ls())

## Criando com função para realizar essa operação de probabilidade com o dia do aniversario 
n = 23
birthday <- function(n){
  aniversarios <- sample(x = 1:365, size = n, replace = TRUE)
  qte <- sum(duplicated(aniversarios))
  coincide <- min(1, qte)
  return(coincide)
}

## Chamada da função
birthday(22)

## Usando o replicate para replicar a função 
resultados <- replicate(10000, birthday(22))
## Tipo do replicate padrão
str(resultados)
## Média dos resultados
mean(resultados)

## Estimando para 60
pbirthday(60)

resultados <- replicate(10000, birthday(60))
mean(resultados)

## Criando função simula
simula <- function(run = 1000, n = 23){
  resultados <- replicate(n = run, expr = birthday(n))
  return (mean(resultados))
}

## Chamando a função
simula(run = 10, n = 23)

## Replicando ela 1000 vezes
probabilidade <- replicate(1000, simula(run = 1000, n = 23))

## Criando histograma para representar 
hist(probabilidade, freq = F)
abline(v = mean(probabilidade), lty = 2, lwd = 2)
mean(probabilidade)
sd(probabilidade)

## Colacando os quantil no gráfico
quantis <- quantile(probabilidade, probs = c(0.025, 0.975))
abline(v =quantis, lty = 2, lwd = 2, col = 'red')

## Intevalo de confiança 95%
quantile(probabilidade, probs = c(0.025, 0.975))

## Semi amplitude
diff(quantis)/2


# Sistema de dados da data no PC
data <- Sys.Date()
data

## Inicial do dia da semana
format(data, format = "%a")
## Dia da semana
format(data, format = "%A")
## Primeiro dia da semana
format(data, format = "%u")
## Dia do mês
format(data, format = "%d")
## Número do mês
format(data, format = "%m")
## Abreviação do mês
format(data, format = "%b")
## Nome do mês
format(data, format = "%B")
## Ano em que está abreviado
format(data, format = "%y")
## Ano em que está
format(data, format = "%Y")
## Formato da data padrão internacional
format(data, format = "%D")
## Formato padrão do Brasil
format(data, format = "%d/%m/%y")

## Tipo de Data
class(data)
## Primeira data registrada
as.Date(1)

## Estabelecendo origem da data
as.Date(1, origin = "2024-01-01")