#decision making statements

if (5 < 6 && 2 != 1)
  print("Yes")

#if else if opening and closing should be in the same line as if

if (2 > 3) {
  print(3)
} else if (4 < 5) {
  print(5)
}

#switch

s <- 2
sw <- switch(s, "three", "seven", "nine")
sw

#looping statements

i<-1
while(i<5){
  print(paste("i",i))
  i<- i+1
}

v<- 1:9
for(i in v){
  print(i)
}

#nchar function to find the length of the strin
str<- "bangalore"
nchar(str)

#break and next same usage 

#repeat
