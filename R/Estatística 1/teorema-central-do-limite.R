#Formação Cientista de Dados - Prof. Fernando Amaral
#Teorema Central do Limite

#omitir warnings
options(warn=-1)
install.packages("semTools")
library(semTools)

#Inicializa um vetor 
z = rep(0,500)

#Gera as amostras
for (i in 1:500) {
  m = mvrnonnorm(1000, c(1, 2), matrix(c(10, 2, 2, 5), 2, 2),
                 skewness = c(5, 2), kurtosis = c(3, 3))
  #grava a média da amostra
  z[i] =mean(m)
  
  #imprime as 3 primeiras
  if (i<4){
    
    hist(m,breaks=50, main= paste0("Histrograma ", i ))
  }
}

#Imprime a distribuição da média das amostras
hist(z)