#Formação Cientista de Dados - Prof. Fernando Amaral
#Grafos Clássicos

#install.packages("igraph")
#install.packages("igraphdata")
library(igraph)
library(igraphdata)

#12 grafos clássicos
#Pontes de Koenigsberg
data(Koenigsberg)
Koenigsberg
plot(Koenigsberg)
#graus impares, não é um grafo euleriano
degree(Koenigsberg, mode="all")

#Rede social básica
data(kite)
degree(kite, mode="all")
plot(kite)

#Amizades em uma faculdade (grafo8)
data(UKfaculty)
UKfaculty
plot(UKfaculty)
comun=cluster_edge_betweenness(UKfaculty, directed = F)
plot(comun,UKfaculty)