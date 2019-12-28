#to display histogram 

args<- commandArgs(TRUE)

N<- args[1]
x<- rnorm(N,0,1)

png()