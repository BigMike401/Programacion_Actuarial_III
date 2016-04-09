#Recuerda tener la carpeta de archivos justo dentro del directorio de trabajo
mediacontaminante <- function(directorio,contaminante,id=1:332){
    v <- vector("numeric",0)
    n <- 0
    #Determinación del contaminante
    if(contaminante == "sulfate"){
        columna <- 2
    } else if(contaminante == "nitrate"){
        columna <- 3
    } else {
        print(paste("No existe el contaminante '",contaminante,"'",sep = ""))
        break
    }
    #Comienza ciclo principal
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
        #Determinación de la cantidad de casos completos
        for(j in 1:nrow(archivo)){
            if(is.na(archivo[j,columna]) == F){
                n <- n+1
            }
        }
        #Construcción de vector auxiliar del contaminante de las ciudades
        v <- c(v,archivo[,columna])
    }
    #PROMEDIO
    z <- (1/n)*sum(v,na.rm = T)
    if(z == 0){
        print("No hay presencia del contaminante")
    } else {z}
}

mediacontaminante("specdata","nitrate",23)