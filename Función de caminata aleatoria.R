CamAleatoria <- function(n,z){
    x<- vector("numeric",1)
    x[1] <- z
    for(i in 2:n){
        length(x) <- length(x) +1
        moneda <- runif(1)
        if(moneda<=0.5){
            z <- z+1
            x[i] <- z
        } else {
            z <- z-1
            x[i] <- z
        }
    }
    x
}

y <- CamAleatoria(100,20)
plot(y,type = "b")