#clustering

#k-means clustering extensively used in industries

data <- read.csv("grades_km_input.csv")
data

head(data)

data$Student =NULL

#kmeans function
model1 <- kmeans(data,centers =10)
model1

#centers are the groups
