### R code from vignette source 'EBSeq_Vignette.Rnw'

###################################################
### code chunk number 1: EBSeq_Vignette.Rnw:172-173
###################################################
library(EBSeq)


input <- function(inputfile) {
   EBOut <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {

EBDERes=GetDEResults(EBOut, FDR=0.05)
write.csv(EBDERes$DEfound, paste(outputfile, "DEfound", "csv", sep="."))
write.csv(EBDERes$PPMat, paste(outputfile, "PPMat", "csv", sep="."))
write.csv(EBDERes$Status, paste(outputfile, "Status", "csv", sep="."))
}

