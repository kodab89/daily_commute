#pętla na oba pliki z dwoma nazwami (work/home)

importFilePath <- c("C:\\Dropbox\\CODING\\R\\projects\\daily_commute\\source\\")
importFileNames <- c("czas_dojazdu_do_pracy.csv", "czas_dojazdu_do_domu.csv")
nameSource <- c("Work", "Home")

getData <- function(j) {
  
  
  as.data.frame(read.csv2(paste0(importFilePath, importFileNames[j])
                          , sep = "\t", header = T))
}

makeGlobal <- function (input) {
  assign(input, input, envir = .GlobalEnv)
}

j = 1
makeGlobal(j)

for (i in nameSource) {
  
  assign(paste0('importTime', i, 'Raw'), getData(importFilePath, importFileNames, j))
  
  j = j + 1
}