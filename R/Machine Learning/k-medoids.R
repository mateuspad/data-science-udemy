#Formação Cientista de Dados - Prof. Fernando Amaral
#Kmedoids

#install.packages("cluster")
#install.packages("factoextra")
library(cluster)
library(factoextra)

#Gera o cluster
cluster = pam(iris[,1:4],k=3)

#Visualiza
cluster
plot(cluster)
table(iris$Species,cluster$clustering)

#Vizualização com factoextra
g = fviz_cluster(list(data = iris[,1:4], cluster=cluster$cluster), ellipse.type = "norm", ggtheme = theme_bw(),
                 main="Cluster")
plot(g)