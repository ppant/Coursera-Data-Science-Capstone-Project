library(shiny)

shinyUI(fluidPage(titlePanel("Next Word Prediction Application: Data Science Capstone Project"),
                  
                  hr(),
  tags$head(tags$style(
  HTML('
       #mainpanel {
       #background-color: #A6DAF7;
       }
       #navpanel {
         background-color: orange;
       }
       body, h3, h4, p, textarea, div, label, input, button, select { 
       Verdana, Arial, Helvetica, sans-serif";
      
       }')
  )),
  theme = "nextWordPredict.ui.css",
  navbarPage("nextWordPredict",id ="navpanel",
             tabPanel("Home",
                      sidebarLayout(
                        sidebarPanel(
                          includeHTML("sidebar.html"),
                          # h4("Instructions"),
                          # HTML('<div class="sidebarStyle">'),
                          # HTML("<p>This Shiny App predicts the next word based on the text you typed."),
                          # HTML("<br><br>The input fields are as follows."),
                          # HTML("<li><b>Enter your word/phrase</b>: Text entered for prediction."),
                          # HTML("<br>"),
                          # HTML("<li><b>No. of Predictions</b>: Number of words that the algorithm will predict."),
                          # HTML("<br>"),
                          # hr(),
                          # HTML("The below output will be produced reactively as you type."),
                          # HTML("<br>"),
                          # hr(),
                          # HTML("<li><b>Predicted Next Word</b>: The predicted next word(s), shown when the app detects that you have finsihed typing one or more words."),
                          # # HTML("<li><b>Last Word Being Typed</b>: The predicted word(s) being typed, shown when the app detects that you are typing a word partially."),
                          # hr(),
                          # HTML('<b><div class="instructionsColorTime">Please allow a few seconds for the output to appear.</div></b>'),
                          # HTML("</div>")
                          hr(),
                          br(),
                          "This app is created by ",
                          a("Pradeep K. Pant", href = "mailto:ppant@cpan.org"),
                          img(src = "https://i.stack.imgur.com/2vMyg.jpg?s=64&g=1"),
                          hr(),
                          p(img(src = "http://files.softicons.com/download/social-media-icons/free-social-media-icons-by-uiconstock/png/512x512/Linkedin-Icon.png", height=30, width=40), strong(em(a("Connect at Linkedin",href="https://in.linkedin.com/in/ppant")))),
                          p(img(src = "https://assets-cdn.github.com/images/modules/logos_page/Octocat.png", height=40, width=50),strong(em(a("Github: Capstone Project",href="https://github.com/ppant"))))),
                          # p(strong(em(img(src = "https://i.stack.imgur.com/2vMyg.jpg?s=64&g=1",href="https://in.linkedin.com/in/ppant")))),
                          # p(strong(em(img("Github: Capstone Project",href="https://github.com/ppant"))))),
                          mainPanel(id="mainpanel",
                          #includeHTML("mailpanel.html")
                          HTML("<br>"),
                          h4('Enter your word/phrase:'),
                          tags$textarea(id="text_in", rows=2, cols=125),
                          HTML("<br><br>"),
                          sliderInput("suggestions", "No. of Predictions:",
                                     value = 1.0, min = 1.0, max = 5.0, step = 1.0),
                          # selectInput("suggestions", label = h3("Select no of predictions to show"),
                          #             choices = list("1" = 1, "2" = 2, "3" = 3, "4"= 4, "5" = 5),
                          #             selected = 1),
                          HTML("<br>"),
                          hr(),
                          h4("Predicted Next Word"),
                          HTML('<div class="predictedWordColor">'),
                          tags$style(type='text/css', '#word_next {color: green;font-size:25px;}'),
                          tags$style(type='text/css', '#word_current {color: blue;font-size:25px;}'),
                          #tags$style(type='text/css', '#myoutput1 {background-color: rgba(255,255,0,0.40); color: green;}'), 
                          #tags$style(type='text/css', '#output {background-color: rgba(0,0,255,0.10); color: blue;font-size:25px;}'), 
                          #h4(verbatimTextOutput("word.next"),style = "color:green"),  
                          verbatimTextOutput('word_next'),
                          HTML('</div>'),
                          HTML("<br>"),
                          hr(),
                          h4("Suggestion for last word typed"),
                          verbatimTextOutput('word_current'),
                          hr(),
                          tags$style(type='text/css', '#footer_text {font-family: Verdana, Arial, Helvetica, sans-serif; color: red;font-size:11pt;}'),
                          HTML('<div id="footer_text">'),
                          br(),
                          br(),
                          br(),
                          br(),
                          "In assocation with:",
                          br(),
                          img(src="http://media.tumblr.com/92a71d62ace9940f8ddd540400444fc4/tumblr_inline_mppo32jFBC1qz4rgp.png", height=70, width=200),
                          img(src="http://brand.jhu.edu/content/uploads/2014/06/university.logo_.small_.horizontal.blue_.jpg", height=100, width=200),
                          img(src="https://cdnswiftkeycom.swiftkey.com/images/misc/logo.png", height=50, width=170),
                          HTML('</div>')
                          
                        )
                        
                        
                      )
             ),
             tabPanel("Design",
                      mainPanel(
                        column(12,
                               includeHTML("application.html"))
                      )
             ),
             tabPanel("References",
                      mainPanel(
                        column(12,
                               includeHTML("references.html"))
                      )
             )
  )
  # hr(),
  # "In assocation with:",
  # img(src="http://media.tumblr.com/92a71d62ace9940f8ddd540400444fc4/tumblr_inline_mppo32jFBC1qz4rgp.png", height=70, width=200),
  # img(src="http://brand.jhu.edu/content/uploads/2014/06/university.logo_.small_.horizontal.blue_.jpg", height=100, width=200),
  # img(src="https://cdnswiftkeycom.swiftkey.com/images/misc/logo.png", height=50, width=170)
))