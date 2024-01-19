
dim(Lenguajes)
colnames(Lenguajes)
str(Lenguajes)
anyNA(Lenguajes)

summary(Lenguajes)

install.packages("modeest")
library(modeest)
mfv(Lenguajes$ASISTENCIAS)
mfv(Lenguajes$LENGUAJES)

var(Lenguajes$ASISTENCIAS)
var(Lenguajes$LENGUAJES)

sd(Lenguajes$ASISTENCIAS)
sd(Lenguajes$LENGUAJES)

media_asistencia<-mean(Lenguajes$ASISTENCIAS)
error<-(Lenguajes$ASISTENCIAS-(media_asistencia))
error
media_calif<-mean(Lenguajes$LENGUAJES)
error<-(Lenguajes$LENGUAJES-(media_calif))
error

CV<-sd(Lenguajes$ASISTENCIAS)/mean(Lenguajes$ASISTENCIAS)*100
CV
CV<-sd(Lenguajes$LENGUAJES)/mean(Lenguajes$LENGUAJES)*100
CV

IQR(Lenguajes$ASISTENCIAS)
IQR(Lenguajes$LENGUAJES)

asistencia<-Lenguajes$ASISTENCIAS
rango<-max(asistencia)-min(asistencia)
rango
calificacion<-Lenguajes$LENGUAJES
rango<-max(calificacion)-min(calificacion)
rango

Lenguajes$GRUPO


Lenguajes$GRUPO<-factor(Lenguajes$GRUPO,
                         levels=c("A","B"))

str(Lenguajes)

summary(Lenguajes)

View(Lenguajes)
GD1<-Lenguajes[2:4]
colnames(GD1)


install.packages("ggplot2")

library(ggplot2)

GD1<-ggplot(Lenguajes,aes(x=ASISTENCIA, y=lenguajes))+
   geom_point(aes(color=GRUPO))+
   scale_color_manual(values=c("lavender","greenyellow"))
   ggtitle("GRAFICO DE DISPERSION")+
   xlab("ASISTENCIA")+
   ylab("CALIFICACIÓN")+
   theme_classic()
  
   
  



