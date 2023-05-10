#Formação Cientista de Dados - Prof. Fernando Amaral

#Importando os Dados
dados = read.csv("slr12.csv",sep = ";")
dados

#Modelo
modelo = lm(CusInic ~ FrqAnual, data=dados)
modelo

#Executar com ctrl + shift + enter
#gráfico
plot(CusInic ~ FrqAnual, data=dados)
abline(modelo)

#usando o modelo
#valor anual da franquina
valr =  1300
#prevendo
prev =  predict(modelo,data.frame(FrqAnual = valr))
prev = paste0("Previsão de Custo Inicial R$: ",round(prev,2))
print(prev)