load("model2.Rdata")

Age<-20
Educaation <-12

test <- as.data.frame(cbind(Age,Education))

predict(model2,test)

