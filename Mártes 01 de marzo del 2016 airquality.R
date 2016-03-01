x <- list(a=c(1,2,3),b="a",d=3+4i)
x

x[2]
x[[2]]

x <- matrix(1:6,2,3)
x
x[1,2]
class(x[1,2])
x[1,2,drop=F]
#con drop mantengo el atributo de dimension de la matriz
x[1,,drop=F]

x <- list(aadvark=1:5)
x$a
x["a"]
x[["a"]]
x[["a",exact=F]]

airquality

