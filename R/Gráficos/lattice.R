#Formação Cientista de Dados - Prof. Fernando Amaral
#Lattice

library(lattice)

#Boxplot
bwplot(trees$Volume)
bwplot(trees$Volume, main="Árvores",xlab="Volume")

#Histograma
#Aspecto é a proporção, nint número de quebras, type: percent, count, density
histogram(trees$Volume, main="Árvores",xlab="Volume",aspect=1, type = "percent", nint=5 )

#Histograma condicional
#Peso das galinhas de acordo com alimentação
chickwts
#histrograma
histogram(chickwts$weight)
#agregamos dados
aggregate(chickwts$weight, by=list(chickwts$feed), FUN=sum)
#histograma condicional
histogram( ~weight | feed, data=chickwts)

#Gráfico de dispersão condicional
#CO2, seis plantas em dois locais, refrigeradas ou não durante a noite
#CO2, conc: concentração de co2, uptake: captação de co2
CO2
xyplot(CO2$conc ~  CO2$uptake)
#type é a origem 
xyplot(CO2$conc ~  CO2$uptake | CO2$Type)
#regrigerado ou não
xyplot(CO2$conc ~  CO2$uptake | CO2$Treatment)

#Cancer de esofago
#agegp: idade, alcgp: alcool, tobgp: tabaco
esoph
dotplot(esoph$alcgp ~ esoph$ncontrols, data=esoph)
dotplot(esoph$alcgp ~ esoph$ncontrols | esoph$tobgp)

#Matriz de dispersão
splom(~CO2[4:5] | CO2$Type, CO2)

#Densidade condicional
densityplot(~CO2$conc | CO2$Treatment, plot.points=FALSE)
densityplot(CO2$conc)
densityplot(~CO2$conc | CO2$Treatment)
densityplot(~CO2$conc | CO2$Treatment, plot.points=FALSE)

#Gráfico 3D
#Spray para repelir abelhas
OrchardSprays
cloud(decrease ~  rowpos * colpos, data=OrchardSprays)
cloud(decrease ~  rowpos * colpos, groups=treatment, data=OrchardSprays)

#Level plot
#Circunferência, largura e volume de árvores
trees
levelplot(Girth ~ Height * Volume, data=trees)