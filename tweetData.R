#text-analysis

#text mining

#sentimental analylsis

#Corpus  large number of text

#Tokenization seperating words from the body of texts
#Bag - of - words dictionary build for specific purpose
#Term Frequency how frequent
#Document Term MAtrix

library(tm)

data <- read.csv("tweets.csv",stringsAsFactors = FALSE)

head(data)

corpus <- Corpus(VectorSource(data$Tweet))
corpus[[1]]$content

#all corpus to lowercase
corpus1<- tm_map(corpus,tolower)
corpus1

#cleaning the data
corpus2<- tm_map(corpus1,removeNumbers)
corpus2<- tm_map(corpus2,removePunctuation)
corpus2[[1]]$content

corpus2[[4]]$content

corpus2[[10]]$content

#stopwords - freq used words

stopwords("english")

corpus3<- tm_map(corpus2, removeWords,c(stopwords("english"),"hi"))
corpus3[[1]]$content


#Generate Term Documnet Matrix

dtm<- TermDocumentMatrix(corpus3)

class(dtm)

View(dtm)

dtm1<- as.matrix(dtm)

View(dtm1)


#frequency

wordF<- rowSums(dtm1)
wordF

#data frame with word along frequency
df<- data.frame(word = names(wordF),freq= wordF)
df

View(df)

head(df)

head(df[order(-df$freq),],10)


Pwords <- readLines('positive.txt')
Pwords

Nwords<- readLines('negative.txt')
Nwords

pos.match<- match(df$word,Pwords)
neg.match<- match(df$word,Nwords)

pos.match =! is.na(pos.match)
neg.match =! is.na(neg.match)

pos.match
neg.match

score <- sum(pos.match)-sum(neg.match)
score

ifelse(score>0, 'Tweet is positive',
       ifelse(score<0, 'Tweet is negative',
              'tweet is neutral'))

