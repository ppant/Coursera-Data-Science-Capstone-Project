library(shiny)

shinyUI(fluidPage( tags$head(tags$style(
  HTML('
       #mainpanel {
       background-color: #A6DAF7;
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
                          includeHTML("sidebar.html")
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
                        ),
                        mainPanel(id="mainpanel",
                          #includeHTML("mailpanel.html")
                          HTML("<br>"),
                          h4('Enter your word/phrase:'),
                          tags$textarea(id="text_in", rows=1, cols=80),
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
                          #tags$style(type='text/css', '#word.next {background-color: rgba(255,255,0,0.40); color: green;}'),
                          verbatimTextOutput('word.next'),
                          HTML('</div>'),
                          HTML("<br>"),
                          hr()
                          ##h4("Last Word Being Typed"),
                          ##verbatimTextOutput('word.current')
                        )
                        
                      )
             ),
             tabPanel("About application",
                      mainPanel(
                        column(12,
                               includeHTML("application.html"))
                      )
             ),
             tabPanel("About Author",
                      mainPanel(
                        column(12,
                               includeHTML("author.html"))
                      )
             )
             
             
  )
))