#csv: coma separated values
#setwd("~/RData") para cambiar directorio

data <- read.csv(file="table.csv")
head(data)
data

tail(data,10)

#dput describe las propiedades de un objeto y el .R guarda todas esas propiedades
y <- data.frame(a=1,b="a")
dput(y)
y
dput(y,file="y.R")
#rm para borrar de la memoria RAM la variable y
rm(y)
#dget para cargar un .R
nueva.y <- dget(file="y.R")
nueva.y
#*.R es archivo de texto altamente compatible

#Probemos dump
x <- "Programación Actuarial III"
y <- data.frame(a=1,b="a")
#dump hace lo mismo que dget pero con múltiples objetos
dump(c("x","y"),file="data.R")

rm(x,y)

source("data.R")

##conexiones
con <- url("http://www.fcfm.buap.mx/","r")
readLines(con,10)
#con es un  vector de caracteres

tail(head(data,1000),1)

#[ regresa un  data.frame de toda la lista
#[[regresa una sola fila de esa clase

x <- c("a", "b", "c","c", "d","e")
x
x[1]
x[2]
x[1:4]
x[x>="c"]

u <- x=="c"
u
x[u]
x[!u]

#Extracción de una lista con []
x <- list(foo=1:4,bar=0.6)
x
class(x[1])
x[[1]]
class(x[[1]])

x$foo
#$ extrae como si tuviera [[]]
x$foo[3];class(x$foo[3])
x$foo[[3]];class(x$foo[[3]])
x["bar"]
x[["bar"]]

x <- list(foo=1:4,bar=0.6,baz="Hola")
x[c(1,3)]

#$ no puede resolver operaciones de índice, o sea, que debe llevar nombre estricto
#$ ayuda a que no recordemos la posición del objeto, sino su nombre
x$bar


x <- list(a=list(10,12,14),b=list(3.14,2.81))
x[[c(1,3)]]
x[c(1,3)]

class(x[[c(1,3)]])
class(x[c(1,3)])

x[[1]][[3]]

#manejo de matrices
x <- matrix(1:6,2,3)
x
x[1,]
x[,2]