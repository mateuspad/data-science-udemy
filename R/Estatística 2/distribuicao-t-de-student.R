#Formação Cientista de Dados - Prof. Fernando Amaral
#Distribuição t de Student

#Salario de cientistas 75 por hora. Amostra 9. S=10. Qual a probabilidade de ser menor que 80 hora?
#t=1.5, graus de liberdade = 8
pt(1.5, 8)

#Qual a proabilidade de ser maior que 80
pt(1.5,8,lower.tail=F)
1 - pt(1.5,8)

#Somando as 2 caudas
pt(1.5, 8) + pt(1.5,8,lower.tail=F)
