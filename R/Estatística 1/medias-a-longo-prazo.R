#Formação Cientista de Dados - Prof. Fernando Amaral
#Médias a longo prazo

#Pequenas e Grandes Amostras
#Espera-se uma média de 3,5

#Amostra pequena
x = sample(1:6,6,replace = T)
mean(x)

#Amostra grande
x = sample(1:6,10000,replace = T)
mean(x)
