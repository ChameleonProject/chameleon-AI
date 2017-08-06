#! /usr/bin/Rscript

library(dplyr)
library(rpart)
library(nnet)
library(purrr)

run <- function(){
  
  
  test <- test <- read.csv('/home/rdash/Desktop/coding/fiesp_2017/chameleon-AI/test.csv', header=FALSE)
  
  index_test <- c(1:nrow(test))
  
  test <- cbind(index_test,test)
  
  test <- tbl_df(test)
  names(test) <- c("index","first_post","birth","friend_number","post_number","picture_number","family_size","gender")
  
  
  net <- readRDS("/home/rdash/Desktop/coding/fiesp_2017/chameleon-AI/model.rds")
  prediction   <- predict(net, test, type="raw")
  
  res_check<- data.frame(test$index,prediction)
  
  print(prediction)
  
}

run()

