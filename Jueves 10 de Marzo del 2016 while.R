contador <- 0
while(contador<=10){
    print(contador)
    contador<-contador+1   
}

contador<-0
while(contador> -200){
    contador<-contador
    if(contador > 1000000) {
        print(paste("Ya se alcanzó el valor"))
        break
    }
}

for(i in 1:10) {
    j<-0
    while(j> -10) {
        j<-j+1
        if(j> 10000){
            print(j)
            break
        }
    }
    print(i)
}

?rbinom

z <- 5
k <- 1
x<- vector("numeric",1)
x[k] <- z
while(z>=3 && z<=10) {
    moneda <- rbinom(1,1,0.5)
    if(moneda==1){
        z <- z+1
        x <- cbind(x,z)
    } else {
        z <- z-1
        x <- cbind(x,z)
    }
    k <- k+1
    if(k>=100000) break
}
x