



vet0 <- c(1,2,3,4,5)
vet1 <- c(10,20,30,40,50)
vet2 <- c(3,5,7)
vet3 <- c(2,4,6,8,10,12)


vet0+vet1
vet1+5

vet4 <- c(100,200)

vet3+vet2

vet1+vet2



vet1*2

vet0*vet1

vet0*vet2



vet0%*%vet1

vet0%*% t(vet1)

2^vet0
plot(2^vet0, type = "l")

2^(1:100)

plot(2^(1:100), type="l")
plot(log10(2^(1:100)), type = "l")

source("funcoes.txt")
idade    
sum <- 0

for(age in idade){
  sum = sum + age
  print(sum)
}

for(i in seq_along(idade)){
  sum = sum + age
  print(sum)
}

xbar = sum/9
xbar

sum(idade)

# Soma dos 100 primeiros numeros naturais

sum(1:100)
prod(1:20)


(prod(idade))^(1/9)


sum((1:100)^3)
