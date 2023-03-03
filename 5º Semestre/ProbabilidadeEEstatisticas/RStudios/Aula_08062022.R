












max(x)

#variancia

x1<-c(0,2,3,4,6)
var(x1)
x2<-c(1,2,3,4,5)
var(x2)
var(x1);var(x2)

#desvio padrão

sd(x1);sd(x2)

#coeficiente de variação

Cv.x1<-sd(x1)/mean(x1)*100
Cv.x1
Cv.x2<-sd(x2)/mean(x2)*100
Cv.x2

#Tabelas de Frequencia

x<-c(110,12,12,8)
prop.table(x)*100

require(MASS)
data(cats)
attach(cats)
summary(cats)

#media por grupos

tapply(Bwt,Sex,mean)
tapply(Hwt,Sex,mean)

apitidao<-ifelse(Hwt>=3.5"apto","inapto")
apitidao

table(Sex,apitidao)
table(Hwt,apitidao)

#Frequencia relativa

prop.table(sex.t,1)
round(sex.t)
prop.table(sex.t,1)

d<-c(31,13,12,22,27,33,17,26,16,22,18,13,16)
summary(d)
brk<-seq(10,35,5)
brk<-seq(10,35,5);brk
classes<-c("10-14","15-19","20-24","15,29","30-35")
table(cut(d,breaks=brk,right=FALSE,labels=classes))

#Gráfico de frequencia

plot(table(cut(d,breaks=brk,right=FALSE,labels=classes)),ylab="Freq.")


#Grafico de barras

x<-c(110,12,10,8)
barplot(x,ylab="freq.",xlab="categorias")
barplot(x,ylab="freq.",xlab="categorias",names=c("Nenhum","Leve","Moderada","Severa"),col=2:5)

