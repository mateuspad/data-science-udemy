#Formação Cientista de Dados - Prof. Fernando Amaral
#Séries Temporais

install.packages("forecast")
library(forecast)

#Conhecendo os dados
AirPassengers
start(AirPassengers)
end(AirPassengers)
frequency(AirPassengers)

#Gráficos
#Executar com Crtrl+ Shift + Enter
plot(AirPassengers)
plot(aggregate(AirPassengers))

#Gera uma janela
subst = window(AirPassengers,start=c(1960,1), end=c(1960,12))
subst
plot(subst)

#Decomposição
dec = decompose(AirPassengers)
dec

attributes(dec)
dec$seasonal

#Analisando os elementos da decomposição
#Executar com Crtrl+ Shift + Enter
plot(dec)
plot(dec$x)
plot(dec$seasonal)
plot(dec$trend)
plot(dec$random)

#Suavização Exponencial
ets = ets(AirPassengers)
ets

#Previsão
previsao = forecast(ets, h=12)
plot(previsao)
previsao

#Arima
arima = auto.arima(AirPassengers)
arima

#Previsão
previsao = forecast(arima, h=12)
plot(previsao)
previsao