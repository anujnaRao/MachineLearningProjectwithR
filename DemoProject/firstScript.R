print("Hello World!")

#Modulus
4%%2

#datatypes

str<-"Hi"
is.character(str)


str<-as.numeric(str)

#c is combine 

dd<-c(1,2,3,4)

dd<-1:4


class(dd)

#vectors
li<-c("Jan","Feb","Mar")
print(li)
class(li)

a1<- c(1,2,3)
a2<- c(9,8,7,6)
print(a1+a2)

print(a1-a2)

print(a1*a2)


print()

#matrix

#syntax
#matrix(data,nrow,ncol,byrow<-"FALSE")


mat<-matrix(c('a','b'))

print(mat)

mat<-matrix(c(1,2,3,4,5,6,7,8),nrow=4,ncol=4,byrow=TRUE)

mat<-matrix(c("a","b","c","d"),nrow=2,ncol=2)

#row and col index

mat[1,3]

mat[4,]

mat[,4]

mat<- matrix(1:10,nrow=2)
 print(mat)

 
 #dimension
 dim(mat)

#list of variables 
 ls() 
 
 #solves the unequal length 
 
 lis<- list('hi',1,2.2)
lis
length(lis)

lis[[1]]


#can use list within a list and vector within a list

li1<-list(lis,c(1:4),list(2:5),'hi')
li1

#array

ar<-array(c(1,2,3,4))
ar

ar<-array(c(1,2,3,'hi'))

ar<-array(c(1,2,3,4),"hi")

ar<-array(1,2,3,4,2.2)


#factor

fact<-c("A",'B','B','C',"c")
fact

is.factor(fact)

fact<-as.factor(fact)

#or 2 methods

fact<- factor(fact)


class(factor)


#data frames

#list of vectors which are of equal length

#ssyntax: data.frame(df,stringAsFactors= TRUE)
#stringAsFactors = TRUE, converts string to factor


vint <- c(1,2,3)
vchar<- c('a','b','c')
vstr<- c("hi","hello","bye")
vint2<- c(4,5,6)

vdf <- data.frame(vint,vchar,vstr,vint2)

class(vdf)

vdf

#details of data frame
str(vdf)

#col name
names(vdf)

summary(vdf)

#id of the variables using it printing values $ for id

vdf$vdf

vdf$vint

