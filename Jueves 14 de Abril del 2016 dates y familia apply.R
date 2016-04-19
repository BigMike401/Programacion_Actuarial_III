#El punto de referencia para contar fechas es 01-01-1970
x <- as.Date("1970-01-01")
class(x)
unclass(x)
unclass(as.Date("1970-01-01"))
unclass(as.Date("1970-01-02"))
unclass(as.Date("1970-01-03"))
unclass(as.Date("2016-04-14"))
#Días vividos de Mike
unclass(as.Date("2016-04-14")) - unclass(as.Date("1993-12-25"))

x <- Sys.time()
x
p <- as.POSIXlt(x)
p
names(unclass(p))
p$yday #yday es year day, dias transcurridos del año
p$mday #mes en transcurso
p$wday #dia de la semana

p$isdst # isdst es veracidad de zona horaria
p$zone #CDT es central d time

#posixlt es vector con varios names y $ es para extraer el dato de un 
#determinado name

months(Sys.time())

#Familia apply
lapply
#lapply es loop aply y aplica una funcion a todos los elementos de un list
x <- list(a=1:100,b=c(1,3,5,7),c=50:1)
x

lapply(x,mean)
files <- list.files(directorio)[id]
sum(lapply(datos,complete.cases))
#vector y lista es a matriz y dataframe

#sapply simplifica lo de lapply
sapply(x, mean)
#Si los elementos son de tamaño 1 devuelve vector
#Si estos son te tamaña mayor que 1 e igual dimension devuelve matriz

lapply(1:4,runif)
set.seed(1) #se fija la semilla
sapply(1:4,runif) # no se puede simplificar porque es dataframe
