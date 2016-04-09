myplot <- function(x,y,tipo="l",...){
    plot(x,y,type=tipo,...)
}

myplot(seq_along(x),x)
myplot(seq_along(x),x,tipo="b")
paste("Hola","a","todos",sep=" ")
?paste
#... denota todos los demás argumentos que puede llevar el function
#Se deben nombrar todos los argumentos posteriores a ... para no confusiones
#las functions son perezosas
?seq_along

args(paste)
args(cat)
lm
?lm
?rm

lm <- function (x){x*x}
lm
lm(2)
rm(lm)

search()
?search
library(ggplot2)

install.packages("swirl")
#Estudiar R_programming en swirl
swirl