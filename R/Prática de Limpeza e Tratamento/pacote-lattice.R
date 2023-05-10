#Formação Cientista de Dados - Prof. Fernando Amaral

library(lattice)

bwplot(trees$Volume)
bwplot(trees$Volume, main="Árvores",xlab="Volume")

histogram(trees$Volume, main="Árvores",xlab="Volume",aspect=1, type = "percent", nint=5 )

chickwts

histogram(chickwts$weight)

aggregate(chickwts$weight, by=list(chickwts$feed), FUN=sum)

histogram( ~weight | feed, data=chickwts)

CO2
xyplot(CO2$conc ~  CO2$uptake)
xyplot(CO2$conc ~  CO2$uptake | CO2$Type)
xyplot(CO2$conc ~  CO2$uptake | CO2$Treatment)

dotplot(esoph$alcgp ~ esoph$ncontrols, data=esoph)
dotplot(esoph$alcgp ~ esoph$ncontrols | esoph$tobgp)

splom(~CO2[4:5] | CO2$Type, CO2)

densityplot(~CO2$conc | CO2$Treatment, plot.points=FALSE)
densityplot(CO2$conc)
densityplot(~CO2$conc | CO2$Treatment)
densityplot(~CO2$conc | CO2$Treatment, plot.points=FALSE)

OrchardSprays
cloud(decrease ~  rowpos * colpos, data=OrchardSprays)

levelplot(Girth ~ Height * Volume, data=trees)
