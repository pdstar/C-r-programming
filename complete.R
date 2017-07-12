complete <- function(directory, id = 1:332) {
  
  dirname = paste("C:/Users/Paulami.Das/Documents/R/Data/Week 2 Data/", directory, sep = "")
  dirnew <- setwd(dirname)
  
  id_new <- id 
  
  nobs <- vector(mode="numeric", length=0)
  id <- vector(mode="numeric", length=0)
  
  for(i in  1:length(id_new)) {
    
    if (id_new[i] < 10) {
      file_name = paste("00", id_new[i], sep = "")
    } else if (id_new[i] < 100) {
      file_name = paste("0", id_new[i], sep = "")
    } else 
      file_name = id_new[i]
    
    datasetname = paste(file_name, ".csv", sep = "")
    datasetR <- read.csv(datasetname)
    
    Numrow_temp <- nrow(subset(datasetR, !is.na(nitrate) & !is.na(sulfate)))
    id <- c(id, id_new[i])
    nobs <- c(nobs, Numrow_temp)
    
  }
  
  Ques2 <- data.frame(id, nobs)
  print(Ques2)
}