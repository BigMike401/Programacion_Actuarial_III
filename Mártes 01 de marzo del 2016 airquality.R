x <- list(a=c(1,2,3),b="a",d=3+4i)
x

x[2]
x[[2]]

x <- matrix(1:6,2,3)
x
x[1,2]
class(x[1,2])
x[1,2,drop=F]
#con drop mantengo el atributo de dimension de la matriz
x[1,,drop=F]

x <- list(aadvark=1:5)
x$a
x["a"]
x[["a"]]
x[["a",exact=F]]

airquality

y <- airquality
dput(y,"airquality.R")
nuevay <- dget(file="airquality.R")

#Sacar NA de los valores de airquality
head(airquality)
datoscompletos <- airquality[complete.cases(airquality),]
datoscompletos

nrow(datoscompletos)
dim(datoscompletos)
?sum
dim(datoscompletos)[1]
sum(complete.cases(airquality))

#Estructuras de control
x <- 11
if(x>3){
    y<-10
} else {
    y<-5
}
y

x<-2
y<- if(x>3) {
    10
} else {
    5
}
y

?runif
x<-runif(1)
x
if(x>=0 && x<=0.2) {
    "Quiubo"
} else if(x>=0.2 && x<=0.5) {
    "Qué onda"
} else if(x>=0.5 && x<=0.9) {
    "hola"
} else if(x>=0.9 && x<=1) {
    "Qué pedo güey"
}
