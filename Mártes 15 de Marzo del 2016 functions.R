miprimerasuma <- function(x,y){
    x+y
}
miprimerasuma(1:5,3)
miprimerasuma(1:5,5:1)

mayor10 <- function(x){
   x[x>10]
}

mayor <- function(x,y){
    x[x>y]
}

mayor(1:100,50)

promediocols <- function(x,na.rm=T){
    n <- ncol(x)
    resultado <- vector("numeric",n)
    for(i in 1:n){
        resultado[i] <- mean(x[,i],na.rm = na.rm)
    }
    resultado
}

promediocols(airquality,T)
?mean

mean(airquality[,3])

#na.rm es na remove
#Al declarar una variable dentro de los argumentos de la función se tomará
#como default