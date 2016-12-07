library(tm)
library(NLP)

Data <- read.csv("/home/nlp/Documents/Black Friday Data set/Untitled Document",stringsAsFactors = FALSE)
#Data <- paste(Data,collapse = " ")
view(Data)

#Corpus
VS <- VectorSource(Data)
corpus <- Corpus(VS)

#Convert into Document Term Matrix
dtm <- DocumentTermMatrix(corpus)

#Into Matrix
dtm2 <- as.matrix(dtm)
dtm
dtm2

#Check Frequency
freq <- colSums(dtm2)
freq <- sort(freq,decreasing = TRUE)
head(freq)

library('wordcloud')


freword <- names(freq)

wordcloud(freword[1:10],freq[1:15])


