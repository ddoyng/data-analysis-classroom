# Setting working directory
setwd("/Users/amyling/Downloads/RStudio/temperatureproject")
list.files()

# Reading the input files
#
# header = TRUE : first line of file is a header 
# otherwise, set header = FALSE
nyctemperature = read.table("nyc_temperature.txt",header=TRUE)

# Define sample space S as all data
S = nyctemperature

# Define the Feburary days
# finds which rows in column 2 of S are equal to 2
A = which(S[,2]==2)

# Define the warm days
B = which(S[,7]>=50)

# warm days in feburary
C = intersect(A,B)
