#1-)

#a-) Quantitativa continua


#b-)
soja<-c(3600, 3545, 3658, 3498, 3657, 3425, 3785, 3254, 3266, 3641, 
        3687, 3698, 3621, 3654, 3554, 3569, 3598, 3578, 3567, 3574)
mean(soja)
#[1] 3571.45


#c-)
var(soja)
#[1] 17231.73


#d-)
cv<-function(x){coef<-sd(x)/mean(x)*100 
return(coef)}

cv(soja)
#[1] 3.67553


#--------------------------------------------------------------------------

#2-)
leite<-c(4.0, 4.5, 5.0, 5.0, 5.0, 5.5, 6.0, 6.0, 6.5, 6.5, 6.5,
         6.5, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.5, 8.5, 9.0, 9.0,
         9.0, 9.5, 10.0, 10.0, 10.5, 10.5, 11.0, 12.0, 12.5, 13.0, 13.0)
cv(leite)
#[1] 31.71529


#--------------------------------------------------------------------------

#3-)
cafe<-c(12, 15, 18, 22, 17, 14, 18, 23, 29, 12)

#a-)
mean(cafe)
#[1] 18

#b-)
median(cafe)
#[1] 17.5

#c-)
sd(cafe)
#[1] 5.374838


#--------------------------------------------------------------------------


#4-)
PanelaCheia<-c(3.83, 4.08, 4.59, 5.80, 7.81, 6.31, 8.37, 7.50, 9.30, 5.98,
               6.78, 5.23, 7.50, 6.62, 2.80, 6.51, 5.27, 5.44, 6.08, 6.66,
               8.49, 3.86, 2.91, 5.82, 7.47, 6.52, 6.61, 7.80, 5.62, 8.23)

hist(PanelaCheia)


#--------------------------------------------------------------------------


#5-)
CanaAcucar<-c(9.3, 7.8, 8.3, 10.1, 10.2, 9.5, 8.7, 9.0, 8.7, 9.7,
              9.1, 8.8, 3.6, 9.4, 3.6, 8.9, 9.2, 9.4, 11.4, 3.1,
              9.6, 3.1, 2.0, 9.8, 8.7, 9.0, 8.6, 9.2, 10.1, 9.3)

#a-)
mean(CanaAcucar)
#[1] 8.24


#b-)
median(CanaAcucar)
#[1] 9.05


#c-)
hist(CanaAcucar)


#d-)Diferença entre a média e a mediana é um indicativo de assimetria no 
#conjunto de dados, que também pode ser verificada nos gráficos 
#apresentados. No caso, foram verificados alguns talhões com resultados 
#muito baixos, que faz com que o valor da média também seja puxado para 
#baixo. Esse efeito não é verificado no cálculo da mediana que verifica 
#apenas o valor central do conjunto de dados.


#--------------------------------------------------------------------------



#6-)
milho<-c(82.1, 74.9, 80.4, 85.3, 90.5, 82.4, 85.1, 82.7, 75.4, 80.7,
         80.8, 82.7, 89.1, 87.2, 82.1, 81.6, 86.8, 86.1, 79.2, 79.1)

#a-)
hist(milho)


#b-)
mean(milho)
#[1] 82.71
#Se verificarmos a média acima, podemos ver que ela é menor do que o
#fabricante informou, porem como a diferença foi pequena, é dificil
#afirmar que ele esta errado, ja que apenas 20 sementes foram
#plantadas para fazer esse teste



#--------------------------------------------------------------------------


#7-)
racao<-c(2.94, 3.38, 2.49, 3.52, 2.97, 2.09, 2.91, 1.74, 4.27, 5.17,
         2.27, 1.79, 3.16, 2.47, 5.99, 2.55, 3.29, 2.61, 1.99, 2.76)
#a-)
hist(racao)


#b-)
quantile(racao, c(0.25, 0.50, 0.75), type=2)
#  25%     50%     75% 
#2.370   2.835    3.335 


#c-)
#Não, pois os animais estão demorando mais para ganhar o peso ideal

#--------------------------------------------------------------------------


#8-)

#a-) Quantitativa discreta


#b-)
#      Intervalo  fi    Fi     fr       Fr
#    1 [8,10)     3     3      10.0   10.0
#    2 [10,12)    9     12    30.0    40.0
#    3 [12,14)    7     19    23.3    63.3
#    4 [14,16)    4     23    13.3    76.7
#    5 [16,18)    4     27    13.3    90.0
#    6 [18,20]    3     30    10.0    100.0


#c-)
chuva<-c(3, 9, 7, 4, 4, 3)
var(chuva)
#[1] 6

#--------------------------------------------------------------------------


#9-)
frangos<-c(961, 967, 971, 974, 979, 982, 992, 996, 997, 998,
           998, 999, 1000, 1000, 1002, 1002, 1002, 1003, 1004, 1004,
           1005, 1005, 1007, 1007, 1008, 1009, 1009, 1009, 1010, 1013,
           1014, 1016, 1016, 1017, 1017, 1020, 1021, 1021, 1022, 1024,
           1025, 1026, 1027, 1028, 1028, 1028, 1029, 1030, 1030, 1030,
           1030, 1031, 1031, 1032, 1032, 1032, 1033, 1034, 1034, 1034,
           1038, 1038, 1039, 1040, 1041, 1041, 1041, 1042, 1049, 1052,
           1054, 1056, 1065, 1069, 1071, 1072, 1079, 1082, 1083, 1084)

quantis <- c(0, 0.2, 0.5, 0.8, 1)
quantile(frangos, quantis, type=2)

#    0%        20%      50%       80%       100% 
#   961.0    1002.0    1024.5    1040.5    1084.0 



#--------------------------------------------------------------------------

#10-)
ArvorL1<-c(9.4, 9.2, 10.2, 12.5, 12.2, 10.5, 12.1, 
           10.2, 11.4, 10.1, 10.1, 8.7, 8.5, 6.5, 9.6)

ArvorL2<-c(10.8, 11.7, 11.5, 11.7, 11, 11.9, 11.3, 11.7,
           10.5, 10.7, 11.6, 12.4, 11.8, 12.4, 12.5)

mean(ArvorL1)
#[1] 10.08

mean(ArvorL2)
#[1] 11.56667


#Comparando a média entre as duas localidades,
# as arvores plantadas na segunda localidade foi melhor




#--------------------------------------------------------------------------


#11-)
desvioped<-sqrt(39.6)
media<-desvioped/7.266574*100

desvioped2<-(8.647028*95.8)/100

variancia<-desvioped2^2


#--------------------------------------------------------------------------

#12-)

EstadoCivil<-c("Solteiro","Casado","Casado","Solteiro","Solteiro","Casado",
               "Solteiro","Solteiro","Casado","Solteiro","Casado",
               "Solteiro","Solteiro","Casado","Casado","Solteiro","Casado",
               "Casado","Solteiro","Solteiro","Casado","Solteiro",
               "Solteiro","Casado","Casado","Casado","Solteiro","Casado",
               "Casado","Casado","Solteiro","Casado","Casado","Solteiro",
               "Casado","Casado")
GrauEsc<-c("Ens. Fund.",   "Ens. Fund.",   "Ens. Fund.",   "Ens. Médio",  "Ens. Fund.",   "Ens. Fund.",   "Ens. Fund.",   "Ens. Médio",  "Ens. Fund.",   "Ens. Fund.",   "Ens. Médio",  "Ens. Fund.",   "Ens. Médio",  "Ens. Médio",  "Ens. Médio",  "Ens. Fund.",   "Ens. Médio",  "Ens. Médio",  "Ens. Médio",  "Ens. Médio",  "Superior",     "Superior",     "Ens. Médio",  "Ens. Médio",  "Ens. Fund.",   "Ens. Médio",  "Ens. Médio",  "Ens. Médio",  "Ens. Fund.",   "Ens. Médio",  "Ens. Médio",  "Superior",     "Superior",     "Superior","Superior","Ens. Médio")


NFilhos<-c(1,2,0,1,3,2,2,0,1,0,1,2,0,2,2,1,5,3,3,2)


Salario<-c(4.00 ,4.56 ,5.25 ,5.73 ,6.26 ,6.66 ,6.86 ,7.44 ,7.39 ,8.46 ,7.59 ,8.95 ,8.12 ,9.35 ,8.74 ,9.80 ,9.13 ,10.76,9.77 ,11.59,10.53,12.79,11.06,13.60,12.00,14.69,13.23,15.99,13.85,16.61,14.71,18.75,16.22,23.30,17.26,19.40)


Idade<-c(26,32,36,20,40,28,41,23,43,27,34,44,33,38,37,39,30,37,31,34,25,26,30,35,41,29,32,35,46,36,40,33,31,42,43,48)


Regiao<-c("Interior","Capital", "Capital", "Outro",   "Outro",   "Interior","Interior","Outro",   "Capital", "Capital", "Capital", "Outro",   "Interior","Outro",   "Outro",   "Outro",   "Interior","Interior","Capital", "Capital", "Interior","Outro",   "Outro",   "Outro",   "Outro",   "Interior","Interior","Capital", "Outro",   "Interior","Interior","Capital", "Outro",   "Interior","Capital", "Capital")


tabcivil <- data.frame(fi = as.numeric(table(EstadoCivil)))
tabcivil$Fi <- cumsum(table(EstadoCivil))
tabcivil$fr <- table(EstadoCivil) / length(EstadoCivil) * 100
tabcivil$Fr <- cumsum(table(EstadoCivil)) / length(EstadoCivil) * 100
rownames(tabcivil) <- names(table(EstadoCivil))
tabcivil

#         fi Fi       fr        Fr
#Casado   20 20 55.55556  55.55556
#Solteiro 16 36 44.44444 100.00000



tabgrau <- data.frame(fi = as.numeric(table(GrauEsc)))
tabgrau$Fi <- cumsum(table(GrauEsc))
tabgrau$fr <- table(GrauEsc) / length(GrauEsc) * 100
tabgrau$Fr <- cumsum(table(GrauEsc)) / length(GrauEsc) * 100
rownames(tabgrau) <- names(table(GrauEsc))
tabgrau

#           fi Fi       fr        Fr
#Ens. Fund. 12 12 33.33333  33.33333
#Ens. Médio 18 30 50.00000  83.33333
#Superior    6 36 16.66667 100.00000


tabfilhos <- data.frame(fi = as.numeric(table(NFilhos)))
tabfilhos$Fi <- cumsum(table(NFilhos))
tabfilhos$fr <- table(NFilhos) / length(NFilhos[complete.cases(NFilhos)]) * 100
tabfilhos$Fr<-cumsum(table(NFilhos))/length(NFilhos[complete.cases(NFilhos)])*100
rownames(tabfilhos) <- names(table(NFilhos))
tabfilhos


#fi Fi fr  Fr
#0  4  4 20  20
#1  5  9 25  45
#2  7 16 35  80
#3  3 19 15  95
#5  1 20  5 100



tabregiao <- data.frame(fi = as.numeric(table(Regiao)))
tabregiao$Fi <- cumsum(table(Regiao))
tabregiao$fr <- table(Regiao) / length(Regiao) * 100
tabregiao$Fr <- cumsum(table(Regiao)) / length(Regiao) * 100
rownames(tabregiao) <- names(table(Regiao))
tabregiao

#         fi Fi       fr        Fr
#Capital  11 11 30.55556  30.55556
#Interior 12 23 33.33333  63.88889
#Outro    13 36 36.11111 100.00000



pie(table(GrauEsc), labels=names(table(GrauEsc)))

pie(table(Regiao), labels=names(table(Regiao)))


barplot(table(EstadoCivil), xlab="Estado civil")

barplot(table(NFilhos), xlab="Número de filhos")

hist(Salario, main=NULL, xlab="Salário", ylab="Frequência")

hist(Idade, main=NULL, xlab="Idade", ylab="Frequ^encia")

mean(NFilhos, na.rm=TRUE)
#[1] 1.65

median(Idade)
#[1] 34.5

quantile(Salario, c(0.25, 0.75), type=2)
#   25%    75% 
#7.515    14.270 






