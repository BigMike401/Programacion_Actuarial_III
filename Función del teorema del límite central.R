LimiteCentral <- function(NoVar, NoEsc, FunDistribucion){
    #Lista con 'NoEsc' escenarios de 'NoVar' variables aleatorias cada uno
    x <- lapply(rep(NoVar,NoEsc),FunDistribucion)
    y <- sapply(x, mean)
    hist(y)
}

LimiteCentral(50,10000,runif)