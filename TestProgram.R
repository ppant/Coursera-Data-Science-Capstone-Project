# R programs to practice intermedite logic which I will try to use in Capstone project 
## Author: Pradeep K. Pant, ppant@cpan.org
## Date: 22/08/2016

## Load CRAN modules 
library(downloader)
library(plyr);
library(dplyr)
library(knitr)

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
## Read the first line of text 
line<-readLines(con, 1) 
## Read the next line of text 
line<-readLines(con, 1) 
## Read in the next 5 lines of text 
line<-readLines(con, 5) 
## Close the connection handle when you are done
close(con) 
