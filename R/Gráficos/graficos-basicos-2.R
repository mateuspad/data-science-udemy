#Formação Cientista de Dados - Prof. Fernando Amaral
#Gráficos Básicos 2 

#Boxplot
boxplot(trees$Volume, main= "Árvores", xlab = "Volume")
boxplot(trees$Volume, main= "Árvores", xlab = "Volume", col="blue", horizontal=TRUE ) 
boxplot(trees$Volume, main="Árvores", xlab = "Volume", col="blue",outline=F )

#notch
boxplot( trees$Height, main="Árvores", xlab = "Altura", col="blue",  notch=TRUE )
#dados do gráfico
boxplot.stats(trees$Height)
#lê apenas uma informação
boxplot.stats(trees$Height)$stats

#Vários gráficos
boxplot(trees)

#Agregação
InsectSprays
spray = aggregate(. ~ spray, data=InsectSprays,sum)
spray 

#Gráfico de Barras
#Executar com ctrl+shift+enter
barplot(spray$count,col= gray.colors(6), xlab="Spray", ylab="Total", names.arg=spray$spray)
box()

#Gráfico de Setor - Pizza
pie(spray$count, labels= spray$spray, main="Spray",col=c(1:6))

#Pizza com legenda
pie(spray$count,labels=NA,  main="Spray",col=c(1:6))
legend("bottomright",legend=spray$spray ,cex=1, fill=c(1:6))