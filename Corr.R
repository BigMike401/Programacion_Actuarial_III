#Recuerda tener la carpeta de archivos justo dentro del directorio de trabajo
corr <- function(directorio,horizonte=0){
    #Creación del vector
    resultado <- vector("numeric",0)
    Xi <- vector("numeric",0)
    Yi <- vector("numeric",0)
    
    #Comienza ciclo principal
    for(i in 1:332){
        #Condicional para determinar la cadena a leer del archivo
        if(i<10){
            chain <- paste(getwd(),"/",directorio,"/00",i,".csv",sep = "")
            archivo <- read.csv(chain)
        } else if(i<100){
            chain <- paste(getwd(),"/",directorio,"/0",i,".csv",sep = "")
            archivo <- read.csv(chain)
        } else {
            chain <- paste(getwd(),"/",directorio,"/",i,".csv",sep = "")
            archivo <- read.csv(chain)
        }
        
        #Comienza ciclo de determinación de casos completos para un archivo
        n <- 0; r <- 0
        for(j in 1:nrow(archivo)){
            if(is.na(archivo[j,2]) == F && is.na(archivo[j,3]) == F){
                n <- n+1
                Xi <- c(Xi,archivo[j,2])
                Yi <- c(Yi,archivo[j,3])
            }
        }
        
        #Determinación de la participación del monitor en el resultado
        if(horizonte <= n){
            #Comienza cálculo de la correlación
            sumaxy <- 0; sumax <- 0; sumay <- 0
            promediosulfate <- (1/n)*sum(archivo[,2],na.rm = T)
            promedionitrate <- (1/n)*sum(archivo[,3],na.rm = T)
            for(j in 1:n){
                sumaxy <- sumaxy + (Xi[j] - promediosulfate)*(Yi[j] - promedionitrate)
                sumax <- sumax + (Xi[j] - promediosulfate) ^ 2
                sumay <- sumay + (Yi[j] - promedionitrate) ^ 2
            }
            #Construcción del vector
            r <- sumaxy/(((sumax)^(1/2))*((sumay)^(1/2)))
            resultado <- c(resultado,r)
        }
    }
    resultado
}

cr <- corr("specdata",400)
cr

source("Corr.R")
source("Completos.R")
head(cr)