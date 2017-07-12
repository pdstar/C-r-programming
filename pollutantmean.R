
pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  dirname = paste("C:/Users/Paulami.Das/Documents/R/Data/Week 2 Data/", directory, sep = "")
  dirnew <- setwd(dirname)
  mean_vect <- vector(mode="numeric", length=0)
  
  for(i in  1:length(id)) {
    
    if (id[i] < 10) {
      file_name = paste("00", id[i], sep = "")
    } else if (id[i] < 100) {
      file_name = paste("0", id[i], sep = "")
    } else 
      file_name = id[i]
    
    #print (id[i])
    
    datasetname = paste(file_name, ".csv", sep = "")
    datasetR <- read.csv(datasetname)
    
    
    Vect_name <- paste("vect_", id_new[i], sep = "" )
    
    vectint_2 <- datasetR[, pollutant] 
    Vect_name <- vectint_2[!is.na(vectint_2)]
    mean_vect <- c(mean_vect, Vect_name)
  }

  meanval <- mean(mean_vect, na.rm = TRUE)
  print(meanval)
}