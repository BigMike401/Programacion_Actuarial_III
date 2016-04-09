#rm es remover una funcion del ambiente
search() #search lo tiene todo ordenado de mayor a menor conjunto
#el ambiente siempre sale primero
#cuando se busca algo con library se va a colocar justo después del global env
#y se irán acomodando conforme el orden de las evaluaciones de library

#todas las funciones se almacenan en global
#El entorno es una coleccion de simbolos y valores. Todo entorno tiene un entorno
#parent y la cuestion es si existen entornos hijo
#vba esta basado en c
#si existe una variable libre en la funcion, el valor se encontrara en el
#entorno de trabajo del usuario.
#si no encuentro valor en el entorno se ira de arriba para arriba
#vba tiene ambito dinamico, conforme se vaya desarrolando la
#declaracion de todo
#r es lexicologico estatico y trabaja con varios entornos

hacerpotencia <- function(n){
    potencia <- function(x){
        x^n
    }
    potencia
}

cubica <- hacerpotencia(3)
cubica
cubica(6)
cuadrada <- hacerpotencia(2)
cuadrada
cuadrada(11)

#fechas y tiempos
x <- as.Date("1970-01-01")
x
unclass(x)
unclass(as.Date("1970-01-02"))

x <- Sys.time()
x
p <- as.POSIXlt(x)
names(unclass(p))
p$sec

#posixct guarda un numerote de segundo, posixlt guarda un conjunto de 
#características y tiene mas detalle y es mas pesado. Son formatos

#weekdays, month, quarters son funciones genericas de tiempo