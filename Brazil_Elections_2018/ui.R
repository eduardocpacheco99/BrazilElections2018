#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Brazil Elections 2018"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(

      
      checkboxInput("Jair_Bolsonaro", "Jair Bolsonaro", FALSE),
      verbatimTextOutput("Jair_Bolsonaro"),
      checkboxInput("Ciro_Gomes", "Ciro Gomes", FALSE),
      verbatimTextOutput("Ciro_Gomes"),
      checkboxInput("Marina_Silva", "Marina Silva", FALSE),
      verbatimTextOutput("Marina_Silva"),
      checkboxInput("Haddad", "Fernando Haddad", FALSE),
      verbatimTextOutput("Haddad"),
      p(strong("-----")),
      p(h3("Mean of Google Search by Candidate")),
      p("Ciro Gomes"),
      textOutput("ciro_mean"),
      p("Marina Silva"),
      textOutput("marina_mean"),
      p("Fernando Haddad"),
      textOutput("haddad_mean"),
      p("Jair Bolsonaro"),
      textOutput("bolsonaro_mean")
      
      
      


    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("trendPlot")

    )
  )
))
