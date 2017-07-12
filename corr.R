
corr <- function(directory, threshold = 0) {
  
  dirname = paste("C:/Users/Paulami.Das/Documents/R/Data/Week 2 Data/", directory, sep = "")
  dirnew <- setwd(dirname)
  
  corrvect <- vector(mode="numeric", length=0)
  
  for(i in  1:332) {
    
    if (i < 10) {
      file_name = paste("00", i, sep = "")
    } else if (i < 100) {
      file_name = paste("0", i, sep = "")
    } else 
      file_name = i
    
    datasetname = paste(file_name, ".csv", sep = "")
    datasetR <- read.csv(datasetname)
    
    rowcount <- nrow(subset(datasetR, !is.na(nitrate) & !is.na(sulfate)))
    
    #print(i)
    #print(rowcount)
    
    if (rowcount >= threshold & rowcount != 0) {
    nonullD <- subset(datasetR, !is.na(nitrate) & !is.na(sulfate))
    cor_temp <- cor(nonullD$sulfate, nonullD$nitrate)  
    corrvect <- c(corrvect, cor_temp)
    }  
  }  
  
  corrvect
}