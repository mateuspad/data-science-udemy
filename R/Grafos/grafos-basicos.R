#Formação Cientista de Dados - Prof. Fernando Amaral
#Grafos básicos

#install.packages("igraph")
library(igraph)

#Grafo direcionado, arestas por pares
grafo1 = graph(edges=c(1,2,3,4))
plot(grafo1)

#Grafo conexo
grafo2 = graph(edges=c(1,2,2,3,3,4,4,1))
plot(grafo2)

#Arestas nas duas direções
grafo2 = graph(edges=c(1,2,2,3,3,4,4,1,1,4,4,3,3,2,2,1))
plot(grafo2)

#Laço
grafo3 = graph(edges=c(1,2,2,3,3,4,4,1,1,1))
plot(grafo3)

#Literais, incidência na direção do +
#1-+2 = segue na direção do 2
#3++4 = duas direções
grafo8 = graph_from_literal(1-+2,2-+3,3++4,4+-1)
plot(grafo8)

#Não direcionado com Literais
grafo8 = graph_from_literal(1-2,2-3,3-4,4-1)
plot(grafo8)

#Grafo desconexo, isolado, grau zero
grafo8 = graph_from_literal(1-2-3-4-1,5)
plot(grafo8)
grafo8

#Objeto Igraph
#D--- 4 4 --    números são as dimensões de vértices e arestas
#1->2 2->3 3->4 4->1   estrutura do grafo
#D/U - direcionado / não direcionado
#N nome do grafo
#W grafo ponderado (peso nas arestas)
#B Tipo do grafo

grafo2 = graph(edges=c(1,2,2,3,3,4,4,1))
plot(grafo2)
grafo2

#Grafo não direcionado
#U para não direcionado
grafo3 = graph(edges=c(1,2,2,3,3,4,4,1),directed=F )
plot(grafo3)
grafo3

#Elementos Isolados
#Ele completa até o número de n gerando elementos isolados
grafo4 = graph(edges=c(1,2,2,3,3,4,4,1),directed=F, n=10 )
plot(grafo4)

#Vértices Nomeados
grafo5 <- graph(edges= c("A", "B", "B", "C", "C", "D","D", "E","E","A","A","C","C","B")) 
plot(grafo5)

#Outra forma de criar grafos isolados
grafo6 <- graph(edges= c("A", "B", "B", "C", "C", "D","D", "E","E","A","A","C","C","B"), isolates=c("F","G"))
plot(grafo6)
#matriz adjacente
grafo6[]
#linha 1
grafo6[1,]
#coluna 1
grafo6[,2]
#nomes dos vértices
V(grafo6)$name

#Outros atributos
grafo7 <- graph(edges= c("Fernando", "Pedro", "José", "Antônio", "Fernando", "José","Fernando", "Antônio"))
plot(grafo7)
#pesos aos vértices como atributo
V(grafo7)$Peso = c(40,30,30,25)
#ler atributos, temos name e peso. Nome é padrão
vertex_attr(grafo7)
#atributos para arestas
E(grafo7)$TipoAmizade = c("Amigo","Inimigo","Inimigo","Amigo")
#mostra todos
edge_attr(grafo7)
#mostra atributo pelo nome
edge_attr(grafo7)$TipoAmizade
vertex_attr(grafo7)$Peso
#weight é atributo padrão
E(grafo7)$weight = c(1,2,1,3)
grafo7
#Tipo do grafo, agora temos os 4 simbolos preenchidos
V(grafo7)$type ="Humanos"
grafo7