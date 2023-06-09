#Formação Cientista de Dados - Prof. Fernando Amaral
#Árvores de Decisão para Classificação

#install.packages('rpart',dependencies=T)
library(rpart)

#Carrega dados de credito e separa em treino e teste
credito = read.csv("Credit.csv")
credito
amostra = sample(2,1000,replace=T, prob=c(0.7,0.3))
creditotreino = credito[amostra==1,]
creditoteste = credito[amostra==2,]

#Cria modelo, método para classificação
arvore = rpart(class ~ ., data=creditotreino,  method="class")
print(arvore)

#Impressão da árvore
#Executar com Ctrl+ Shift + Enter
plot(arvore)
text(arvore, use.n=TRUE, all=TRUE, cex=.8)

#Previsao
teste = predict(arvore,newdata=creditoteste)
head(teste)

#Adiciona a coluna teste a creditoteste
cred = cbind(creditoteste,teste)
cred

#Cria coluna com resultado categórico
cred['Result'] = ifelse(cred$bad>=0.5,"bad","good")
cred

#Matriz de Confusão
confusao = table(cred$class,cred$Result)
confusao
taxaacerto = (confusao[1] + confusao[4]) / sum(confusao)
taxaacerto