install.packages("dplyr")

library(dplyr)
getwd()

eFile<-read.csv("employeeData.csv",stringsAsFactors = FALSE)

class(eFile)

str(eFile)

glimpse(eFile)

summary(eFile)

#view

View(eFile)

dim(eFile)

names(eFile)

summary(eFile$USN)

summary(eFile$SALARY)

head(eFile,n=5)

tail(eFile)

nrow(eFile)

ncol(eFile)

print(eFile)

library(tidyr)

library(stringr)

ef<- str_length((eFile$SALARY))
ef

table(eFile$GENDER)

unique(eFile$CITY)

length(unique(eFile$CITY))

which(duplicated(eFile$CITY))

library(tm)

is.na(eFile$NAME)

sum(is.na(eFile$NAME))

na.omit(eFile$AGE)

which(is.na(eFile$NAME))

which(eFile$AGE == 25)

table(eFile$SALARY)

table(eFile$AGE)


hist(eFile$AGE)

hist(eFile$SALARY,col='blue',border = 'red')
