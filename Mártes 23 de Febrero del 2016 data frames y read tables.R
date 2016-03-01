#factores
x <- factor(c("si","si","no","si","no"))
x
y <- factor(c("Azul","Amarillo","Rojo","Morado","Azul","Verde","Morado"))
y
table(x)
table(y)
plot(x)
plot(y)

unclass(x)
unclass(y)
?factor
x <- factor(c("si","si","no","si","no"),c("yes","no"))
x

x <- factor(c("si","si","no","si","no"),c("si","no"))
x

y <- factor(c("Azul","Amarillo","Rojo","Morado","Azul","Verde","Morado"),c("Azul","Morado"))
y

#Con el argumento de levels puedo jerarquizar los datos

#Con unclass separamos los componentes del vector

x <- c(1,2,NA,10,3)
x
is.na(x)
is.nan(x)

y <- c(1,2,NA,NaN,3)
y
is.na(y)
is.nan(y)

#Todos los NaN son NA, pero no todos los NA son NaN

#Creación de data frames

x <- data.frame(foo=11:14, bar=c(T,F,F,T))
x
?data.frame
row.names(x)

row.names(x) <- c("Hugo","Paco","Luis","Rosita")
x

nrow(x); ncol(x)

x <- 1:3
names(x) <- c("foo","bar","norf")
x

x <- list(a=1,b=2,c=3)
#Nombres de listas
x$a
x$b
x$c

#El signo de peso ayuda a que se muestre el vector indicado de la list x

#Nombres en matrices
m <- matrix(1:4,nrow=2,ncol=2)
m
dimnames(m) <- list(c("a","b"),c("c","d"))
m
?dimnames #Para poner nombres a las filas y columnas de un objeto

?read.table

#Con comment.char le ayudas a la consola a procesar comentarios
#con read.table le ayudamos a la consola a que procese más rápido la data