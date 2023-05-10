#Formação Cientista de Dados - Prof. Fernando Amaral

dados = read.csv("/temp/data-science/R/Prática limpeza e tratamento-R/dados/tempo.csv", sep = ";", na.strings="", stringsAsFactors=T)
head(dados)
summary(dados)

##sol, nublado e chuva
counts = table(dados$Aparencia)
counts
barplot(counts, main="Aparencia", xlab="Aparencia")

##Sem NAS
dados[is.na(dados$Aparencia),]

##Possui "Menos"
x = dados[!dados$Aparencia %in% c("chuva","nublado","sol"),]$Aparencia
x

##Atribuir a mediana entao "menos" -> "sol"
x = dados[!dados$Aparencia %in% c("chuva","nublado","sol"),]$Aparencia = 'sol' 
x

#retirar o "menos"
dados$Aparencia = factor(dados$Aparencia)
#resultado
summary(dados$Aparencia)



#Temperatura
summary(dados$Temperatura)
dados[dados$Temperatura < -130 | dados$Temperatura > 130,]$Temperatura
dados[is.na(dados$Temperatura),]
median(dados$Temperatura)
dados[dados$Temperatura < -135 | dados$Temperatura > 130 ,]$Temperatura = median(dados$Temperatura) 
dados[dados$Temperatura< -135 | dados$Temperatura > 130 ,]$Temperatura
summary(dados$Temperatura)


#Umidade
summary(dados$Umidade)
dados[dados$Umidade < 0 | dados$Umidade>100,]$Umidade
dados[is.na(dados$Umidade),]
dados[is.na(dados$Umidade),]$Umidade = median(dados$Umidade,na.rm = T)
dados[dados$Umidade < 0 | dados$Umidade>100,]$Umidade = median(dados$Umidade) 
dados[dados$Umidade < 0 | dados$Umidade > 100 ,]
summary(dados$Umidade)


#Vento 
summary(dados$Vento)
dados[is.na(dados$Vento),]
dados[is.na(dados$Vento),]$Vento = "FALSO"
dados[is.na(dados$Vento),]
summary(dados$Vento)


dados
