# Estatística Descritiva

dados <- read.csv("Downloads/Social_Network_Ads.csv")

# Visualizar os dados
head(dados)

# Medidas de Tendência Central
# Média
mean(dados$Age)

# Mediana
median(dados$Age)

# Moda
# A moda não é uma função nativa do R, então vamos criar uma função para calcular a moda
moda <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

moda(dados$Age)


# Medidas de Dispersão
# Variância
var(dados$Age)

# Desvio Padrão
sd(dados$Age)

# Coeficiente de Variação
cv <- function(x) {
  sd(x) / mean(x)
}

cv(dados$Age)


# Medidas de Posição
# Quartis
quantile(dados$Age)

# Decis
quantile(dados$Age, c(0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9))

summary(dados$Age)

library(Hmisc)
describe(dados$Age)

library(pastecs)
stat.desc(dados$Age)

library(psych)
describe(dados$Age)

