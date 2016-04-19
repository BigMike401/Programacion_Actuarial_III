#Teorema del limite central
#Distribuciones normal, uniforme, exponencial y gamma

a <- runif(10,50,100); hist(a)
#Hist es histograma de frecuencias
?runif
?rnorm

hist(rnorm(10,100,10))
hist(rexp(1000000,1)) #función exponencial
#El exponencial se sesga en algún punto

hist(rgamma(1000000,5,0.5)) #Gamma es tiempo que pasa antes de ver un exito}

n <- 1000
suma <- vector("numeric",n)
for(i in 1:n){
    suma[i] <- sum(rexp(n),1)
}
hist(suma)

n <- 10000
sumas <- vector("numeric",n)
for(i in 1:n){
    sumas[i] <- sum(runif(n),1)
}
hist(sumas)

n <- 10
m <- 5
x <- lapply(rep(m,n),runif)
y <- sapply(x, mean)
hist(y)

rep(m,n)
#Hacer funcion con m n y tipo de distribucion