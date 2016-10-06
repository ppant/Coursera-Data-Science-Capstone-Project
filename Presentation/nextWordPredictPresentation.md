<style>

/* slide titles */
.section .reveal .state-background {
background: white;
}
.section .reveal p {
font-family: Verdana, Arial, Helvetica, sans-serif;
color: rgb(255, 87, 51);
text-align:right; width:100%;
line-height: 0.1em;
#margin-top: 70px;
}
.section .reveal h1, .section .reveal h2, .section {
font-family: Verdana, Arial, Helvetica, sans-serif;
color: #2B89F9;
margin-top: 50px;
}
.reveal pre code {
	font-family: Verdana, Arial, Helvetica, sans-serif;
  background-color: #E8F6FC;
  color: green;
  font-size: 40px;
  #position: fixed; top: 90%;
  #text-align:center; width:100%;
  }
.reveal h3 { 
  font-size: 65px;
  color: #2B89F9  ;
}

/* heading for slides with two hashes ## */
.reveal .slides section .slideContent h2 {
   font-size: 37px;
   font-weight: bold;
   color: green;
}

/* ordered and unordered list styles */
.reveal ul, 
.reveal ol {
    font-size: 37px;
    color: #FF5733;
    list-style-type: square;
  
  .reveal h1, .reveal h2, .reveal h3 {
  word-wrap: normal;
  -moz-hyphens: none;
  }

</style>
nextWordPredict 
======================================================== 
font-family: 'verdana'
transition: rotate

        Coursera/Johns Hopkins University 
          Data Science Specialization
           Switftkey Capstone Project 

Pradeep K. Pant 

ppant@cpan.org

October 5, 2016

Building a predictive text model
========================================================

- Create an algorithm for predicting the next word given one or more words as input using NLP

- A large corpus of blog, news and twitter data was loaded and analyzed 

- N-grams were extracted from the corpus and then used for building the predictive model 

- Various methods of improving the prediction accuracy and speed were explored

Algorithm 
========================================================

- N-gram model with stupid back-off strategy was used

- Dataset was cleaned, lower-cased, removing links, twitter handles, punctuations, numbers and extra whitespaces, etc

- Matrices from 6-gram to uni-gram were extracted using RWeka 

- Reduced size of model by dropping least frequent N-grams

Shiny App interface
========================================================

- Provides a text input box for user to type a word/phrase

- Detects words typed and predicts the next word reactively

- Iterates from longest N-gram (6-gram) to shortest (2-gram)

- Predicts using the longest, most frequent, matching N-gram

- Option to select no, of prediction displayed

App and resources
========================================================

- Average response time under 2-3 seconds

- Application memory usage well under 150 MB

- Application is running at: https://ppant.shinyapps.io/nextWordPredict/

- Github link for various code files is here: https://github.com/ppant/Coursera-Data-Science-Capstone-Project 

Code and app will be updated with any new features/improvements.
