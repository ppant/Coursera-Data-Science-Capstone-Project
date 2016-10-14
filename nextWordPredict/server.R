library(shiny)
library(tm)
library(RWeka)
library(stringr)

shinyServer(function(input, output) {
  # Load the word prediction algorithm
  source("predictNextWordAlgo.R")
  
  # Load the n-gram frequencies
  load("nfreq.v5.RData")
  load("nfreq.twitter.RData")
  #load("ngram.RData")
  # Reactively perform word prediction
  observe({
    text.in <- as.character(input$text_in)
    count <- input$suggestions
    
    pcw <- NULL
    if (str_sub(text.in, start=-1) != " " && text.in != "") {
      # Predict current word
      pcw <- predictCurrentWord(text.in, nf, count)
      output$word_current=renderPrint(cat(pcw, sep = "\n"))
    } else if(nchar(text.in) > 0) {
      # Clear prediction output
      output$word_current=renderPrint(cat(""))
    }
    
    if (str_sub(text.in, start=-1) == " ") {
      # Predict next word
      output$word_next=renderPrint(cat(cleanPredictNextWord(text.in, nf, count), sep = "\n"))
    } else if (!is.null(pcw) && lastWords(text.in, 1) %in% pcw) {
      # Full word detected; Predict next word
      output$word_next=renderPrint(cat(cleanPredictNextWord(text.in, nf, count), sep = "\n"))
    } else {
      # Clear prediction output
      output$word_next=renderPrint(cat(""))
    }
  })
})