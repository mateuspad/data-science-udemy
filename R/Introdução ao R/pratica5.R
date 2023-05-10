#Formação Cientista de Dados - Prof. Fernando Amaral

##IF
a=10
b=20
if(a<b){
  print("Verdadeiro")
}else {
  print("Falso")
}


##Ifelse
x = ifelse(a<10,"A é maior", "A não é maior")
x


##FOR
for(i in 1:10){
  print(i)
}

##While
a= 1
while(a<=10){
  print(a)
  a = a+1
}

##Função

parouimpar <- function(x){
  return(ifelse(x%%2 == 0, "Par", "Impar"))

}
parouimpar(5)
parouimpar(12)