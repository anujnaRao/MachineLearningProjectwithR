#dependent var numeric regression, else classification (factor or other)

#CLassification algorithm

exCSV<- read.csv("churn.csv",stringsAsFactors = FALSE)
exCSV

summary(exCSV)

str(exCSV)

hist(exCSV$Churned)

boxplot(exCSV$Churned)
View(exCSV$Churned)
print(exCSV$Churned)


pie(table(exCSV$Churned))

#always convert dependent variable into factor
#In classification convert the var required to factors as it mainly works on yes or no
chur<-as.factor(exCSV$Churned)
class(chur)

ma<-as.factor(exCSV$Married)
class(ma)

str(exCSV)

exCSV$ID <- NULL

model1 <- glm(Churned ~ Age,data = exCSV)

#. is used for all the independent variable

model2 <- glm(Churned ~ .,data = exCSV)

model3 <- glm(Churned ~ Age,data = exCSV,family = "binomial")

model4 <- glm(Churned ~ .,data = exCSV,family ="binomial")#best model

summary(model1)

summary(model2)

summary(model3)

summary(model4)

#model having less residual deviance

Age<- 25
Married <- 1
Cust_years<- 3
Churned_contacts <- 2

test<-as.data.frame(cbind(Age,Married,Cust_years,Churned_contacts))
test

res <- predict(model4,test,type ="response")

install.packages("randomForset")

library(randomForest)

model1 <- randomForest(Churned ~ Age,data = exCSV)

model2 <- randomForest(Churned ~ .,data = exCSV)

model1

model2


#confusion matrix 0 negative, 1 positive

