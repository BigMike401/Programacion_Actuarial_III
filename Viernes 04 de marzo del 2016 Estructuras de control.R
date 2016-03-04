#Ciclo for
x <- c("a","b","c","d")
for(i in 1:4){
    print(x[i])
}

x <- matrix(1:6,2,3)
x
for(i in seq_len(nrow(x))){
    for(j in seq_len(ncol(x))){
        print(x[i,j])
    }
}

?seq_len

#Prueba de funcionamiento
n <- 10000
mensajes <- vector("character",n)
for(i in 1:n){
    y <- runif(1)
    if(y<=0.3){
        mensajes[i] <- "Mensaje 30%"
    } else if(y<=0.5){
        mensajes[i] <- "Mensaje 20% a"
    } else if(y<=0.7){
        mensajes[i] <- "Mensaje 20% b"
    } else if(y<=0.9){
        mensajes[i] <- "Mensaje 20% c"
    } else {
        mensajes[i] <- "Mensaje 10%"
    }
}
mensajes
table(mensajes)
plot(table(mensajes))
#Al asignar de mayor a menor espacio muestral de la primera a la última
#revisión del if se hace más fácil al programa que trabaje y menos recursos