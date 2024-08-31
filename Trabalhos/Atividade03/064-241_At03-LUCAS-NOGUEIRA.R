            #-------------------------------------#
            #  Estruturas de Dados em R - EST064  #
            #    Atividade 03 - 24/05/2024        #
            #-------------------------------------#

# Matriz

## Ax = b
A <- matrix(c(1, 2, 3, 2, 5, 9, 5, 7, 8), nrow = 3, byrow = T)
B <- c(20, 100, 200)

## Calculando o determinante da matriz
det.A <- det(A)
det.A

## Verificação da solução do sistema
if(det.A != 0){
  sol <- solve(A, B)
  sol
} else {
  print("O Sistema não possui solução")
}


# Fatores

## Troca de níveis em um vetor de fatores
z <- factor(c("p", "q", "p", "r", "q"))
z

levels(z)[levels(z) == "p"] <- "w"
z

## Concatenacao de vetores e comando sample()

set.seed(666)
sample(1:10, replace = T)


s1 <- factor(sample(letters, size = 5, replace = TRUE))
s2 <- factor(sample(letters, size = 5, replace = TRUE))

s_concatenado <- factor(c(s1, s2))

s_concatenado


## Conjunto de dados `íris`e função `cut()`:
data(iris)

intervalos <- c(4.30, 5.02, 5.74, 6.46, 7.18, 7.901)
rotulos <- c("(4.3, 5.02]", "(5.02, 5.74]", "(5.74, 6.46]", "(6.46, 7.18]", "(7.18, 7.9]")
frequencias <- c(32, 41, 42, 24, 11)

iris$Sepal.Length_categorizado <- cut(iris$Sepal.Length, breaks = intervalos, labels = rotulos, right = F)
contagem <- table(iris$Sepal.Length_categorizado)
contagem

## Gerando uma tabela de contingência a partir do conjunto de dados `iris` com o fator `Species`.

data(iris)
categorias <- table(iris$Sepal.Length < 5, iris$Species)
rownames(categorias) <- c("FALSE", "TRUE")
colnames(categorias) <- levels(iris$Species)
categorias

## Gerando um vetor de fator de respostas:

respostas <- factor(c("Concordo", "Concordo", "Concordo fortemente", "Discordo", "Concordo"))
respostas <- factor(respostas, levels = c("Concordo fortemente", levels(respostas)[-which(levels(respostas) == "Concordo fortemente")]))

levels(respostas) <- c(levels(respostas), "Discordo fortemente")
respostas

## Encontrando os índices dos valores e combinando com os índices dos níveis do fator
x <- factor(c("alto", "baixo", "médio", "alto", "alto", "baixo", "médio"))

df <- data.frame(levels = unique(x), value = seq_along(unique(x)))
df



# Listas

## Dado p, q e x, qual o valor de x[2]?
p <- c(2, 7, 8)
q <- c("A", "B", "C")
x <- list(p, q)
x[2]

## Dado w, v e x, qual comando substituirá "A" em x por "K"?
w <- c(2, 7, 8)
v <- c("A", "B", "C")
x <- list(w, v)
x[[2]] <- replace(x[[2]], x[[2]] == "A", "K")
x

## Dado a lista `a` qual comando dará a soma de todos os elementos de `a`?
a <- list("x" = 5, "y" = 10, "z" = 15)
soma <- sum(unlist(a))
soma

## Dado a lista `nova`, qual o comando irá adicionar `1`a cada elemento do primeiro vetor de `nova`?
nova <- list(a = 1:10, b = "Férias", c = "Olá")
nova$a <- nova$a + 1
nova

## Dado a lista `b`, qual o comando irá imprimir todos os elementos de `b` exceto o segundo elemento do primeiro vetor de `b`?
b <- list(a = 1:10, c = "Olá", d = "AA")
b$a <- b$a[-2]
b

## Dado a lista `x`, qual o comando irá acrescentar um novo item `z` à lista `x` com z = "Novo item"?
x <- list(a = 5:10, c = "Olá", d = "AA")
x$z <- "Novo item"
x

## Dado a lista `y`, qual o comando irá atribuir os nomes (“um”, “dois”, “três”) aos três elementos de `y`?
y <- list(1:10, "string", 666)
names(y) <- c("um", "dois", "três")
y

## Dado a lista `x`, qual o comando irá apresentar o comprimento do vetor r, de x?
x <- list(y = 1:10, t = "Olá", f = "TT", r = 5:20)
comprimento_r <- length(x$r)
comprimento_r


# Criando Data Frame

## Criando o data frame df.res a partir da vinculação por linhas de df.A e df.B
df.A <- data.frame(var1 = 1:5, var2 = LETTERS[1:5])
df.B <- data.frame(var1 = 6:10, var2 = LETTERS[6:10])

df.res <- rbind(df.A, df.B)
head(df.res)

## Apresentando a classe de cada coluna:
classes <- sapply(df.res, class)
classes

## Construindo o data frame df.A2 e vinculando por linhas com `df.B`
df.A2 <- data.frame(var1 = 1:6, var2 = LETTERS[1:6])

df.res2 <- rbind(df.A2, df.B)
tail(df.res2)

##  Adicionando o vetor var3 como uma nova variável de `df.res`
var3 <- 11:20

df.res <- cbind(df.res, var3)
head(df.res)

## Rearranjando as colunas nesse data frame (`df.res`) para que elas fiquem na ordem: `var1`, `var3`, `var2`.
df.res <- df.res[, c("var1", "var3", "var2")]
head(df.res)


# Trabalhando com Data Frame 

## Verificando se o objeto `state.x77` é um data frame, caso contrário será transformado em um.
if(!is.data.frame(state.x77)){
  state.x77 <- as.data.frame(state.x77)
}

head(state.x77)

## Determinando quantos estados têm renda inferior a 4300
estados <- sum(state.x77$Income < 4300)
estados

## Determinando qual é o estado com maior renda
indice <- which.max(state.x77$Income)
estado_maior_renda <- rownames(state.x77)[indice]
estado_maior_renda

## Construindo data frame `state`.
state_abb <- state.abb
state_area <- state.area
state_division <- state.division
state_name <- state.name
state_region <- state.region

state <- data.frame(Abb = state_abb, Area = state_area, Division = state_division,
                    Name = state_name, Region = state_region, row.names = state_name)

head(state)

## Construindo o data frame `estados`.
state.x77 <- state.x77[order(rownames(state.x77)), ]

state <- state[order(rownames(state)), ]

estados <- cbind(state, state.x77)
head(estados)

## Renomeando as variáveis.
colnames(estados) <- c("Abb", "Area", "Div", "Name", "Reg", 
                       substr(names(state.x77), 1, 3))
head(estados)

## Removendo a variável `div`.
estados <- subset(estados, select = -Div)
head(estados)

## Construindo o subconjunto `estados.a`.
colnames(estados) <- trimws(colnames(estados)) # Tirando o espaço de HS
estados.a <- subset(estados, select = -c(Lif, HS, Fro, Abb, Are))
head(estados.a)

## Categorizando a variável `Illiteracy` e adicionando ao data frame `estados`.
intervalos <- c(0.0, 1.0, 2.0, Inf)
estados$Illiteracy_Level <- cut(estados$Ill, breaks = intervalos, 
                                labels = c("baixo", "algum", "alto"), right = TRUE)

estados$Illiteracy_Level <- factor(estados$Illiteracy_Level, 
                                   levels = c("baixo", "algum", "alto"))
head(estados)

## Determinando o estado com maior renda na região oeste e que possui baixo analfabetismo.
estados_oeste <- subset(estados, Reg == "West" & Illiteracy_Level == "baixo")
estado_maior_renda <- estados_oeste[which.max(estados_oeste$Inc), ]

(nome_renda <- estado_maior_renda$Name)
(renda_maxima <- estado_maior_renda$Inc)

# Trabalhando com o array `Titanic{datasets}`

## Determinando número total de passageiros com informações, número de sobreviventes, número de não sobreviventes e a taxa de sobrevivência global (%):
data("Titanic")

(total_passageiros <- sum(Titanic))

(sobreviventes <- sum(Titanic[,,,"Yes"]))

(nao_sobreviventes <- sum(Titanic[,,,"No"]))

(taxa_sobrevivencia <- sobreviventes / total_passageiros * 100)

## Determinando os passageiros por sexo e por classe de bilhete:
(passageiros_genero <- apply(Titanic, c("Sex"), sum))
(passageiros_classe <- apply(Titanic, c("Class", "Sex"), sum))

## Determinando taxa de sobrevivência dos passageiros por sexo:
(sobreviventes_sexo <- apply(Titanic[,,,"Yes"], "Sex", sum))
(nao_sobreviventes_sexo <- apply(Titanic[,,,"No"], "Sex", sum))

(total_passageiros <- sobreviventes_sexo + nao_sobreviventes_sexo)

(taxa<- round((sobreviventes_sexo / total_passageiros) * 100, 2))

## Determinando a distribuição de idade por classe de bilhete, por sexo:
titanic_df <- as.data.frame(Titanic)
(distrib_idade_classe_sexo <- aggregate(Freq ~ Class + Sex + Age, data = titanic_df, sum))

## Análise em relação a chance de sobrevivência de acordo com o sexo, a classe do bilhete e a idade(adulto ou criança):
distrib_idade_classe_sexo_surv <- aggregate(Freq ~ Class + Sex + Age + Survived, 
                                            data = titanic_df, sum)

par(mfrow = c(2, 2), mar = c(5, 5, 5, 2) + 0.1) 

classes <- unique(distrib_idade_classe_sexo_surv$Class)

for (classe in classes) {
  subset_data <- subset(distrib_idade_classe_sexo_surv, Class == classe)
  male_survived <- subset(subset_data, Sex == "Male" & Survived == "Yes")$Freq
  male_not_survived <- subset(subset_data, Sex == "Male" & Survived == "No")$Freq
  female_survived <- subset(subset_data, Sex == "Female" & Survived == "Yes")$Freq
  female_not_survived <- subset(subset_data, Sex == "Female" & Survived == "No")$Freq
  bp <- barplot(
    height = rbind(male_survived, male_not_survived, female_survived, female_not_survived),
    beside = TRUE,
    col = c("blue", "lightblue", "red", "pink"),
    main = paste("Classe de Bilhete:", classe),
    xlab = "Idade",
    ylab = "Contagem"
  )
  axis(1, at = colMeans(bp), labels = c("Crianças", "Adultos"))
}

par(mfrow = c(1, 1))
legend("center",  legend = c("Homens Sobreviventes", "Homens Não Sobreviventes", 
                             "Mulheres Sobreviventes", "Mulheres Não Sobreviventes"), y.intersp = 1.4, x.intersp = 0.4,
       fill = c("blue", "lightblue", "red", "pink"),bty = "n", inset = c(1, 1), cex = 0.9)
title(main = "Contagem de Sobreviventes e Não Sobreviventes no Titanic", line = 4.4)

