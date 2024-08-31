# Testando R

1 * 5

4 + 44

# plot feito
plot(faithful)

# ajuste linear pelos pontos do grafico
faith.ln <- lm(waiting ~eruptions, data = faithful)

#grafico de reta

abline(faith.ln)

# ponto qualquer
points(x = 3, y = 70, pch = 3, cex = 2, col = 'yellow')