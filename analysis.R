rm(list=ls())
cat("\014")   # ctrl+L to the console

library(dplyr)
library(rpart)
library(nnet)
library(purrr)

train <- read.csv('/home/rdash/Desktop/coding/fiesp_2017/fictional-journey/R/dataset.csv', header=FALSE)
test <- read.csv('/home/rdash/Desktop/coding/fiesp_2017/fictional-journey/R/test.csv', header=FALSE)

index <- c(1:nrow(train))
index_test <- c(1:nrow(test))

train <- cbind(index,train)
test <- cbind(index_test,test)

train <- tbl_df(train)
test <- tbl_df(test)
names(train) <- c("index","first_post","birth","friend_number","post_number","picture_number","family_size","gender","is_fake")
names(test) <- c("index","first_post","birth","friend_number","post_number","picture_number","family_size","gender")

train$is_fake


###################################################################
#tree <- rpart(is_fake ~ friend_number, 
#              method = "class", data = train)
#
#prediction <- predict(tree, train, type="class")


############################################################

net <- nnet(is_fake ~  friend_number + picture_number, data=train, size=20, maxit=10000, decay=0.01)
#net <- nnet(is_fake ~  friend_number + post_number + picture_number, data=train, size=20, maxit=10000, decay=0.01)
prediction   <- predict(net, test, type="raw")


###################################################################
res_check<- data.frame(test$index,prediction)

res_check

#names(prediction) <- c("index","is_fake")

#sum(res_check[2] == train$is_fake)/length(train$index)


# stop
