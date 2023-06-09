#Formação Cientista de Dados - Prof. Fernando Amaral

#install.packages("neuralnet")
#install.packages('mltools')
#install.packages('data.table')
#install.packages("caret", dependencies=T)
library(neuralnet)
library(mltools)
library(data.table)
library(caret)

#Dimensionamento de Características - Padronização
iris2 =  scale(iris[,1:4])
iris2 = as.data.frame(iris2)
#Adiciona a classe
iris2$Species = iris$Species
iris2

#Dividimos em treino e teste, usando método do pacote caret
set.seed(1234)
particao = createDataPartition(1:dim(iris2)[1],p=.7)
iristreino = iris2[particao$Resample1,]
iristeste = iris2[- particao$Resample1,]
dim(iristreino)
dim(iristeste)

#One hot encoding para a classe
#Juntamos os atributos com a classe para não perde-los
iristreino = cbind(iristreino[,1:4],one_hot(as.data.table( iristreino[,5])))
iristreino

#Modelo
modelo = neuralnet( V1_setosa  + V1_versicolor  +  V1_virginica  ~ Sepal.Length + Sepal.Width +  Petal.Length + Petal.Width , iristreino, hidden=c(5,4))
print(modelo)
plot(modelo)

#Previsão
teste = compute(modelo,iristeste[,1:4])
teste$net.result
resultado = as.data.frame(teste$net.result)
resultado

#Atribumos nomes as coluns conforme a classe
names(resultado)[1] <- 'setosa'
names(resultado)[2] <- 'versicolor'
names(resultado)[3] <- 'virginica'
resultado

#Usamos o nome das colunas para prencher uma coluna com a classe
resultado$class = colnames(resultado[,1:3])[max.col(resultado[,1:3], ties.method = 'first')]
resultado

#Avaliamos a performance
confusao = table(resultado$class,iristeste$Species)
confusao
sum(diag(confusao) * 100 / sum(confusao))