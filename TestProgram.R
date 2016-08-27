# R programs to practice intermedite logic which I will try to use in Capstone project 
## Author: Pradeep K. Pant, ppant@cpan.org
## Date: 22/08/2016

## Load CRAN modules 
library(downloader)
library(plyr);
library(dplyr)
library(knitr)
library(tm)

## Step 1: Download the dataset and unzip folder
## Check if directory already exists?
if(!file.exists("./projectData")){
  dir.create("./projectData")
}
Url <- "https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip"
## Check if zip has already been downloaded in projectData directory?
if(!file.exists("./projectData/Coursera-SwiftKey.zip")){
  download.file(Url,destfile="./projectData/Coursera-SwiftKey.zip",mode = "wb")
}
## Check if zip has already been unzipped?
if(!file.exists("./projectData/final")){
  unzip(zipfile="./projectData/Coursera-SwiftKey.zip",exdir="./projectData")
}
# Once the dataset is downloaded start reading it as this a huge dataset so we'll read line by line only the amount of data needed
# before doing that lets first list all the files in the directory
## List all the files of /final/en_US Dataset folder
path <- file.path("./projectData/final" , "en_US")
files<-list.files(path, recursive=TRUE)
# Lets make a file connection of the twitter data set
con <- file("./projectData/final/en_US/en_US.twitter.txt", "r") 
lineTwitter<-readLines(con) 
# Test code
##length(con)
## Read the first line of text 
#line<-readLines(con, 1) 
## Read the next line of text 
#line<-readLines(con, 1) 
## Read in the next 5 lines of text 
#line<-readLines(con, 5) 
#length(readLines(con))

# Code for capastone quiz 1
# 1. The en_US.blogs.txt  file is how many megabytes?
file.size("en_US.blogs.txt")
# [1] 210160014 ~ 200 MB
# 2. The en_US.twitter.txt has how many lines of text?
# Step:
length(lineTwitter)
## [1] 2360148

# 3. What is the length of the longest line seen in any of the three en_US data sets?

# Step: Read in the lines to arrays:
# Twitter data
longTwitter<-length(lineTwitter)

# Blog data
con <- file("./projectData/final/en_US/en_US.blogs.txt", "r")
lineBlogs<-readLines(con) 
longBlogs<-length(lineBlogs)

# News data
con <- file("./projectData/final/en_US/en_US.news.txt", "r")
lineNews<-readLines(con) 
longNews<-length(lineNews)

# Need the longest line in each array.
longBlogs = nchar(longBlogs)
max(nchar(longBlogs))
# [1] 1
#Apparently below is max of lineBlogs
require(stringi)
longBlogs<-stri_length(lineBlogs)
max(longBlogs)
# [1] 40835

#Apparently below is max of lineNews
longNews<-stri_length(lineNews)
max(longNews)
# [1] 5760

# Apparently below is max of lineTwitter
longTwitter<-stri_length(lineTwitter)
max(longTwitter)
# [1] 213

# 4. In the en_US twitter data set, if you divide the number of lines where the word "love" (all lowercase) occurs 
# by the number of lines the word "hate" (all lowercase) occurs, about what do you get?

loveTwitter<-grep("love",lineTwitter)
length(loveTwitter)
hateTwitter<-grep("hate",lineTwitter)
length(hateTwitter)

# 5. The one tweet in the en_US twitter data set that matches the word "biostats" says what?
biostatsTwitter<-grep("biostats",lineTwitter)
lineTwitter[biostatsTwitter]

# 6. How many tweets have the exact characters "A computer once beat me at chess, but it was no match for me at kickboxing". (I.e. the line matches those characters exactly.)
sentenceTwitter<-grep("A computer once beat me at chess, but it was no match for me at kickboxing",lineTwitter)
length(sentenceTwitter)

# Close the connection handle when you are done
close(con)

