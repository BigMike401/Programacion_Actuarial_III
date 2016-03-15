z <- 5
k <- 0
x<- vector("numeric",0)
x[k] <- z
while(z>=3 && z<=10) {
    moneda <- runif(1)
    if(moneda<=0.5){
        z <- z+1
        x[k] <- z
    } else {
        z <- z-1
        x[k] <- z
    }
    k <- k+1
    length(x) <- length(x) +1
    if(k>=100000) break
}
x
plot(x,type= "s",lwd=5)

?plot