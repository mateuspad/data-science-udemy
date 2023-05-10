#Formação Cientista de Dados - Prof. Fernando Amaral
#install.packages('randomForest',dependencies=T)
library(randomForest)

#carrega os dados de exemplo
soja = read.csv('soybean.csv', stringsAsFactors = T)
soja
dim(soja)
#classes
unique(soja$class)

#gera dois conjuntos de dados aleatórios, para teste e treino
#com 70 e 30% das instâncias, aproximadamente
amostra = sample(2,683,replace=T, prob=c(0.7,0.3))
sojatreino = soja[amostra==1,]
sojateste = soja[amostra==2,]

#constrói o modelo usando dados de treino
floresta = randomForest(class ~ .,data=sojatreino, ntree=100,proximity=T)
floresta

#testa o modelo fazendo previsão com dados de teste
previsao = predict(floresta,sojateste)
previsao

#matriz de confusao
floresta$confusion

#Precisão
1 - mean(floresta$confusion[,'class.error'])