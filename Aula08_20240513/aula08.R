          #---------------------------------------------------# 
          #       Laboratório de Estatística (EST-064)        #
          # Infinito e Conjunto de Dados- Aula 08 - 13/05/24  #
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

