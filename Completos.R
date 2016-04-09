#Recuerda tener la carpeta de archivos justo dentro del directorio de trabajo
completo <- function(directorio, id){
    k <- 1
    #Creación del data frame
    resultado <- data.frame(FileID=id,Nobs=0)
    #Comienza ciclo principal de extracción y cálculo
    for(i in id){
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
        #Comienza ciclo de determinación de casos completos
        n <- 0
        for(j in 1:nrow(archivo)){
            if(is.na(archivo[j,2]) == F && is.na(archivo[j,3]) == F){
                n <- n+1 
            }
        }
        #Construcción del data frame
        resultado[k,] <- c(i,n)
        k <- k+1
    }
    resultado
}

completo("specdata",3)
