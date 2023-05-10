#Formação Cientista de Dados - Prof. Fernando Amaral
#Árvores de Decisão para Regressão

#install.packages("rpart")
#install.packages("forecast")
library(rpart)
library(forecast)

#Conjunto de Dados
iris

#Criamos o modelo prevendo Sepal.Length
modelo = rpart(Sepal.Length ~ Sepal.Width + Petal.Length +  Species ,data=iris)
modelo
summary(modelo)

#Visualização
#Executar com Crtrl+ Shift + Enter
plot(modelo)
text(modelo)

#Previsão
predicao = predict(modelo, iris)
head(predicao)

#Comparamos previsão com dados reais
comparacao = cbind(predicao,iris$Sepal.Length,predicao - iris$Sepal.Length )
head(comparacao)

#Verificamos métricas de erro de nosso modelo
accuracy(predicao,iris$Sepal.Length)