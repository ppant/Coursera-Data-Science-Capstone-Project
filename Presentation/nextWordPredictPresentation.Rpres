nextWordPredict
======================================================== 
font-family: 'verdana'
transition: rotate
author: Pradeep K. Pant, ppant@cpan.org
date: October 10, 2016


        Coursera / Johns Hopkins University 
          Data Science Specialization
           Switftkey Capstone Project 

Building a predictive algorithm for Text
========================================================

Our goal was to create an algorithm for predicting the next word given one or more words as input. A large corpus of more than 4 million documents was loaded and analyzed. N-grams were extracted from the corpus and then used for building the predictive model. Various methods of improving the prediction accuracy and speed were explored.

Designing strategy and improving the algorithm for accuracy
========================================================

- N-gram model with stupid back-off strategy was used
- Dataset was cleaned, lower-cased, removing links, twitter handles, punctuations, numbers and extra whitespaces, etc
- Matrices from 6-gram to uni-gram were extracted
- Sorted N-grams by frequency of occurrence
- Reduced size of model by dropping least frequent N-grams
- Further optimized speed and memory by dropping least frequent 2-grams and 1-grams since very large matrices of 2-grams and 1-grams do not appear to improve accuracy

Predictive Algorithm Shiny App
========================================================

- Provides a text input box for user to type a phrase
- Detects words typed and predicts the next word reactively
- Iterates from longest N-gram (6-gram) to shortest (2-gram)
- Uses last word in matching N-gram as predicted word
- Predicts using the longest, most frequent, matching N-gram
- If no match is found using 6-, 5-, 4-, 3- and 2-grams, randomly selects most frequent word (1-gram)
- Allows to configure how many words the app should suggest

Application Performance
========================================================
- Final model size:
    - <small>82,672 6-grams with frequency > 2</small>
    - <small>184,171 5-grams with frequency > 2</small>
    - <small>474,914 4-grams with frequency > 2</small>
    - <small>440,851 3-grams with frequency > 3</small>
    - <small>About 200k 2-grams and about 20k words (1-grams)</small>
- Average response time under 2 seconds
- Application memory usage under 250MB
- Application is running at: https://ppant.shinyapps.io/nextWordPredict
