#data visualization
#ggplot2

#histogram, box plot,scatter plot, heat map,bar chart

#histogram bins

install.packages("ggplot2")
library(ggplot2)
mtcars

summary(mtcars)

class(mtcars)

mtcars$gear

summary(mtcars$gears)

table(mtcars$gear)

table(mtcars$cyl)

help("ggplot")

qplot(mtcars$gear,geom _Histogram)

ggplot(data=mtcars,aes(mtcars$gear))+geom_histogram()

ggplot(data=mtcars,aes(mtcars$mpg))+geom_histogram()+ geom_histogram(fill = "blue")

ggplot(data=mtcars,aes(mtcars$disp))+geom_histogram(colors = "red")

ggplot(data=mtcars,aes(mtcars$cyl))+geom_histogram() + ggtitle("Histogram for displacement")

mtcars$cyl


ggplot(data=mtcars,aes(mtcars$cyl))+geom_histogram(binwidth = 1,fill="purple",linetype="dotted",colors ="blue")


ggplot(data=mtcars,aes(mtcars$cyl))+geom_histogram()+labs(title="x axis",x="X",y="Y")

ggplot(data=mtcars,aes(mtcars$cyl))+geom_histogram() + geom_density()

ggplot(data=mtcars,aes(mtcars$cyl))+geom_histogram() + xlim(c(0,10)) + ylim(c(0,10))

