#Formação Cientista de Dados - Prof. Fernando Amaral
#Medidas de Centralidade e Variabilidade

#Dados dos jogadores
jogadores = c(40000,18000,12000,250000,30000,140000,300000,40000,800000)

#Média
mean(jogadores)

#Mediana
median(jogadores)

#Quartis
quartis  = quantile(jogadores)
quartis

#3º quartil
quartis[4]

#Desvio padrão
sd(jogadores)

#Resumo
summary(jogadores)