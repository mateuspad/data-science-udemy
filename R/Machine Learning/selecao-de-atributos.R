#Formação Cientista de Dados - Prof. Fernando Amaral
#Seleção de Atributos

#install.packages("e1071")
#install.packages("randomForest")
library(e1071)
library(randomForest)
credito = read.csv("Credit.csv")
credito$class = as.factor(credito$class)

#Dividios os dados em treino e teste
#Definimos semente para ser possível repetir o experimento
set.seed(234)
amostra = sample(2,1000,replace=T, prob=c(0.7,0.3))
creditotreino = credito[amostra==1,]
creditoteste = credito[amostra==2,]

#Criamos um primeiro modelo com todos os atributos
#Avaliamos a acurácia
modelo = svm(class ~., creditotreino)
predicao = predict(modelo,creditoteste)
confusao = table(creditoteste$class,predicao)
taxaacerto = (confusao[1] + confusao[4]) / sum(confusao)
taxaacerto

#Aplicamos um método de seleção de atributos
importancia  = randomForest(class ~ ., data = creditotreino)
col = importance(importancia)
col
varImpPlot(importancia)

#Criamos um segundo modelo com as variáveis independentes mais importantes
modelo = svm(class ~ credit_amount + age + duration + checking_status ,creditotreino)
predicao = predict(modelo,creditoteste)
confusao = table(creditoteste$class,predicao)
taxaacerto = (confusao[1] + confusao[4]) / sum(confusao)
taxaacerto