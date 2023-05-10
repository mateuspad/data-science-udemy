#Formação Cientista de Dados - Prof. Fernando Amaral
#Amostragem Estratificada

install.packages("sampling")
library("sampling")

#Proporção
propocao = 25

#Srswor amostra simples sem reposição, srswr com reposição, poisson, systematic
#a ordem de size é que está no conjunto de dados
amostrairis2=strata(data=iris,
                    stratanames=c("Species"),size=c(rep( propocao,3)), method="srswor")

#Resultado
summary(amostrairis2)

#Dados de infertilidade
infert
summary(infert)

#Amostragem por estratos de education
amostra=strata(data=infert,
               stratanames=c("education"),size=c(5,48,47), method="srswor")

#Resultado
amostra
summary(amostra)
