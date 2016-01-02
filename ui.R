
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(
  fluidPage(
    
    # Application title
    titlePanel("Active Tuberculosis Cases"),
    
    mainPanel(
      column(12, 
             tabsetPanel(
               tabPanel("National", fluidRow(plotOutput("nationPlot"))),
               tabPanel("By State", 
                        fluidRow(plotOutput("statePlot"),
                                 wellPanel(
                                   sliderInput(inputId = "nlabels",
                                               label = "Top n States:",
                                               min = 1,
                                               max = 10,
                                               value = 6, 
                                               step = 1)
                                 )
                        )
               ),
               tabPanel("State Lookup", 
                        fluidRow(plotOutput("iStatePlot"),
                                 wellPanel(
                                   htmlOutput("selectState"))
                        )
               )
             )
      ), 
      #      column(4, 
      #             includeHTML("intro_text.html")),
      width = 12)
  )
)