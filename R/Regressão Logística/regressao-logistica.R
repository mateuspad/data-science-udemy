#Formação Cientista de Dados - Prof. Fernando Amaral
#Regressão Logistica

#Carga de dados
eleicao = read.csv("Eleicao.csv",sep=';',header=T)
eleicao

#Gráfico e visualização
plot(eleicao$DESPESAS,eleicao$SITUACAO)
summary(eleicao)

#Correlação
cor(eleicao$DESPESAS,eleicao$SITUACAO)

#Modelo de Regressão Logística
modelo = glm(SITUACAO ~ DESPESAS,data=eleicao,family="binomial") 
summary(modelo)

#Modelo comparado aos dados
#Executar com ctrl+shift+enter
plot(eleicao$DESPESAS,eleicao$SITUACAO,col='red',pch=20)
points(eleicao$DESPESAS, modelo$fitted, pch=4)

#Testar o modelo com os próprios candidatos
prever = predict(modelo,newdata=eleicao,type="response"  )
prever = prever >= 0.5
prever

#Avaliar performance
confusao = table(prever,eleicao$SITUACAO)
confusao
taxaacerto = (confusao[1] + confusao[4]) / sum(confusao)
taxaacerto

#Novos candidatos
prevereleicao = read.csv("NovosCandidatos.csv",sep=';',header=T)
prevereleicao

#Previsão
prevereleicao$RESULT = predict(modelo,newdata=prevereleicao,type="response") 
prevereleicao$RESULT
prevereleicao$RESULT >= 0.5