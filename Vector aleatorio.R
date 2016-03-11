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