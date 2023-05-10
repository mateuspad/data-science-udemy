#Formação Cientista de Dados - Prof. Fernando Amaral
#Regressão Linear Multipla
  
#Carros,com consumo e outros aspectos
#mpg: consumo, hp cavalos, cyl numero de cilindros, disp cilindradas

install.packages("corrgram")
library(corrgram)
mtcars
dim(mtcars)

#Correlação
cor(mtcars[1:4])
corrgram(mtcars[1:4], order=TRUE, lower.panel=panel.shade,
         upper.panel=panel.pie, text.panel=panel.txt,
         main="Carros")

#Analisamos cilindradas vs consumo
plot(mtcars$mpg ~ mtcars$disp, ylab="Consumo", xlab="Cilindradas", main="Carros")

#Modelo usando cilindradas para prever consumo
#Interceptação e Inclinação
modelo = lm(mpg ~ disp, data=mtcars)
modelo

#Coeficiente de Determinação (71% da variavel dependente é explicada pela variavel explanatória)
#R2 ajustado
summary(modelo)$r.squared 
summary(modelo)$adj.r.squared

#Gráfico com linha do modelo
#Executar com Crtrl+ Shif + Enter
plot(mpg ~ disp, data=mtcars,ylab="Consumo", xlab="Cilindradas", main="Carros")
abline(modelo)

#Prevendo consumo com 200 cilindradas
predict(modelo,data.frame(disp = 200))

#Adicionamos mais duas variável indepedentes, hp e cilindros
modelo = lm(mpg ~ disp +  hp + cyl, data=mtcars)
modelo

#Coeficiente de Determinação (71% da variavel dependente é explicada pela variavel explanatória)
#R2 ajustado
summary(modelo)$r.squared 
summary(modelo)$adj.r.squared

#Prevendo consumo com 200 cilindradas, 100 hp e 4 cilindros
predict(modelo,data.frame(disp = 200, hp=100, cyl=4))