#Formação Cientista de Dados - Prof. Fernando Amaral
#Quiquadrado

#Criamos o conjunto de dados para teste
novela = matrix(c(19,6,43,32),nrow=2, byrow=T)
rownames(novela) = c("Masculino","Feminino")
colnames(novela) = c("Assiste","NaoAssiste")
novela

#Executar Quiquadrado
#Valor de p é maior que 0,05 não há evidências de diferença significativa (hipótese nula)
chisq.test(novela)

#Alteramos a proporção de homens que assiste e não 
#Executamos o teste novamente, agora valor de p menor que 0,05
novela = matrix(c(22,3,43,32),nrow=2, byrow=T)
rownames(novela) = c("Masculino","Feminino")
colnames(novela) = c("Assiste","NaoAssiste")
novela
chisq.test(novela)