exCSV<- read.csv("income.csv",stringsAsFactors = FALSE)

model1<- lm(Income ~ Age,data =exCSV)

summary(model1)
# 0 or *** + or - relationship, ** less, * lesser , ' '  remove from model
#p value should be less

model2<- lm(Income ~ Age + Education,data =exCSV)

model3<- lm(Income ~ Age + Education + Gender,data =exCSV)

summary(model2)#best compared to model 1 and model 3

summary(model3)

Age <- 25
Education <-16

x<-cbind(Age,Education)

test<- as.data.frame(x)

predict(model2,test)


#to give for deployement

rm("Age")
rm("Education")
rm("exCSV")

rm("model1")
rm("model3")

save.image("model2.Rdata")
