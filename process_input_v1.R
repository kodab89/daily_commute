#pętla na oba pliki z dwoma nazwami (work/home)

importFilePath <- c("C:\\Dropbox\\CODING\\R\\projects\\daily_commute\\source\\")
importFileNames <- c("czas_dojazdu_do_pracy.csv", "czas_dojazdu_do_domu.csv")

importTimeWorkRaw <- read.csv2(paste0(importFilePath, importFileNames[1])
                               , sep = ";", header = T)
timeWorkSource <- as.data.frame(importTimeWorkRaw)
colnames(importTimeWork) <- c("id", "date", "time", "status", "comment")


importTimeHomeRaw <- read.csv2(paste0(importFilePath, importFileNames[2])
                               , sep = ";", header = T)
timeHomeSource <- as.data.frame(importTimeHomeRaw)
colnames(timeHomeSource) <- c("id", "date", "time", "status", "comment")