#data Exploration
#first step in data analysis
#dependent(outcome) and independent variable
#univariate analysis bivariate analysis
#outlier detection
#variable transfformation and variable creation

#input data and label gives prediction supervised learning

#regression outcome is numeric continuous
#classification discrete value

#dependent variable is completely influenced by independent variable

library(dplyr)

exCSV <- read.csv("income.csv",stringsAsFactors = FALSE)
exCSV

class(exCSV$ID)

class(exCSV$Income)

str(exCSV)

exCSV$Gender<- as.factor(exCSV$Gender)

class(exCSV$Gender)

summary(exCSV)

library(ggplot2)
#ggplot(data=mtcars,aes(mtcars$gear))+geom_histogram()

#ggplot(data=income,aes())+geom_histogram

hist(exCSV$Income,x="Income",y="Number")

exCSV$Income<- exCSV$Income * 100

a<-table(exCSV$Gender)
labels<-c("Male","Female")
pie(a,labels)

prop.table(a)*100

boxplot(exCSV$Income)
# median middle line
#upper max value below that line 75%
#below median 25% and below that mean
# values above max and below mean are outlier values

quantile(exCSV$Income)

if(exCSV$Income <= 20000){
  exCSV$Income<- na.omit(exCSV$Income)
}

ex<- income[income$Income>=20000,]


hist(exCSV$Age)

boxplot(exCSV$Age)

#to remove from dataframe
data.frame(exCSV$ID <- NULL)
exCSV$ID <- NULL
print(exCSV$ID <- NULL)

hist(exCSV$Education)

boxplot(exCSV$Education)

quantile(exCSV$Education)


