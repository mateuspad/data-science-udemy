#Formação Cientista de Dados - Prof. Fernando Amaral

trees
hist(trees$Height)
hist(trees$Height,main="Arvores", xlab="Arvores", ylab="Arvores", col = "blue")

densidade = density(trees$Height)
plot(densidade)

plot(trees$Girth, trees$Volume, ylab="Circunferência", xlab="Volume", main="Arvores",col="blue",pch=20, type="l")

plot(jitter(trees$Girth), trees$Volume, ylab="Circunferência", xlab="Volume", main="Arvores",col="blue")

CO2
plot(CO2$conc, CO2$uptake,pch=20, col= CO2$Treatment)

legend("bottomright",legend=c("nonchilled","chilled"),cex=1, fill=c("black","red")) 

plot(trees)

split.screen(figs=c(2,2))
screen(1)
plot(trees$Girth, trees$Volume)
screen(2)
plot(trees$Girth, trees$Height)
screen(3)
plot(trees$Height, trees$Volume)
screen(4)
hist(trees$Volume)
close.screen(all=TRUE)



boxplot(trees$Volume, main= "Árvores", xlab = "Volume")
boxplot(trees$Volume, main= "Árvores", xlab = "Volume", col="blue", horizontal=TRUE ) 
boxplot(trees$Volume, main="Árvores", xlab = "Volume", col="blue",outline=F )


boxplot( trees$Height, main="Árvores", xlab = "Altura", col="blue",  notch=TRUE )
#dados do gráfico
boxplot.stats(trees$Height)
#lê apenas uma informação

boxplot(trees)

InsectSprays
spray = aggregate(. ~ spray, data=InsectSprays,sum)
spray 

barplot(spray$count,col= gray.colors(6), xlab="Spray", ylab="Total", names.arg=spray$spray)
box()

pie(spray$count, labels= spray$spray, main="Spray",col=c(1:6))

pie(spray$count,labels=NA,  main="Spray",col=c(1:6))

