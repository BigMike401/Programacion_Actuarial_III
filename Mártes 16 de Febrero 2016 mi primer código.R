# Prueba de Asignación de variables
x <- 1
# Impresión forzada
print(x)
# Impresión indirecta
x
msg <- "Hola a todos"
msg
x <- #Comentario
  x <- (1+2)
#Se inicia una secuencia de datos y se imprime
x <- 1:100
x
# Con corchete, al inicio de cada fila se muestra la posición del primer elemento de esa fila
#El signo ":" se utiliza para denotar secuencias de números.

# Clases atómicas en R
?class
class(1)
class(1L)
class(1*1L)
class(3+2i)
(3+2i)*(3-2i)
class((3+2i)*(3-2i))
class(TRUE)
class(TRUE*1)
class(c(1,FALSE,3L,2+4i,"a"))
#La clase dominante es la de caracter

a <- vector(1,FALSE,3L,2+4i,"a")

#Para crear vectores vacios del tipo y tamaño que me interesa
a <- vector(mode = "numeric", length = 10)
attributes(airquality)
a <- c(1,5,3L,2+4i,FALSE)
a
b <- c(a,"cadena")
c <- c(1,5,3L,2+4i,FALSE,"cadena")
c

#Coerción explícita
x <- 0:6
class(x)
as.numeric(x)
as.logical(x)
as.complex(x)
as.character(x)
?vector
Inf*0
as.numeric(C(3+4i,2+0i))

x <- c(F, 3L, 94.5, 2+3i, "a")
x
x <- list(F, 3L, 94.5, 2+3i, "a")
x
#El list crea vectores individuales en el caso de que sus elementos sean de distinta clase

?matrix
x <- matrix(nrow=2,ncol=3)
x
dim(x)
attributes(x)

x <- matrix(1:6,nrow=2,ncol=3)
x

x <- matrix(1:6,2,3,TRUE)
x

x  <- matrix(1:10,2,5,F)
x

x<-1:10
x
# Al agregar el argumento de dimensión se forza a que lo adquiera 
dim(x) <- c(2,5)
x

#
x <- 1:5
y <- 11:15
z <- 21:25
cbind(x,y,z)
rbind(x,y,z)
data <- rbind(x,y,z,x,x,x,x,x,x)
data[1,]
data[,2]

row <- 1:5
column <- 1:5
mike <- matrix(data=1:5 1:5,5,5)
mike