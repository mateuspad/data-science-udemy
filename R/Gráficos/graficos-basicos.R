#Formação Cientista de Dados - Prof. Fernando Amaral
#Gráficos Básicos

#Histograma
trees
hist( trees$Height)
hist( trees$Height,  main="Árvores", ylab="Frequência",xlab="Altura", col="blue")
hist( trees$Height,  main="Árvores", ylab="Frequência",xlab="Altura", col="blue",
      density=20, breaks=20    )

#Densidade
densidade = density(trees$Height)
plot(densidade)

#Densidade sobre o Histograma, parâmetro par

#Executar com ctrl+shift+enter
hist(trees$Height, main=NULL, xlab=NULL, ylab = NULL)
par(new=TRUE)
plot(densidade)

#Dispersão

plot(trees$Girth, trees$Volume)
plot(trees$Girth, trees$Volume, main="Árvores")
plot(trees$Girth, trees$Volume, ylab="Cirunferência", xlab="Volume", col="blue", main="Árvores")
#pch muda o elementog gráfico
plot(trees$Girth, trees$Volume, ylab="Cirunferência", xlab="Volume", col="blue", main="Árvores", pch=20)

#Muda tipo
plot(trees$Girth, trees$Volume, ylab="Cirunferência", xlab="Volume", col="blue", main="Árovres", pch=20, type="l")

#Tremulação, diminui sobre posição
plot(jitter(trees$Girth), trees$Volume, ylab="Cirunferência", xlab="Volume", col="blue", main="Árvores")

#Legenda com dimensão categórica
plot(CO2$conc, CO2$uptake,pch=20, col= CO2$Treatment)
#"bottom", "bottomleft", "left", "topleft", "top", "topright", "right" and "center"
legend("bottomright",legend=c("nonchilled","chilled"),cex=1, fill=c("black","red")) 

#Novos dados
plot(trees)

#Divisão da tela
#Executar com crtl+shift+enter
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