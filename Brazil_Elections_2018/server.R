#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  df <- read.csv('candidates.csv',sep=',')
  mean_Ciro <- mean(df$Ciro_Gomes)
  mean_Bolsonaro <- mean(df$Jair_Bolsonaro)
  mean_Haddad <- mean(df$Haddad)
  mean_Marina <- mean(df$Marina_Silva)
  output$ciro_mean <- renderText({mean_Ciro})
  output$marina_mean <- renderText({mean_Marina})
  output$haddad_mean <- renderText({mean_Haddad})
  output$bolsonaro_mean <- renderText({mean_Bolsonaro})
  
  output$trendPlot <- renderPlot({
  plot(df$Semana,df$Jair_Bolsonaro,
       type="c",
       main='Google Trends about Brazilian Candidates',
       col="black",
       ylab="Searchs on Google", xlab='Time')

    if(input$Haddad == TRUE){
      lines(df$Semana,df$Haddad, col='red',type='b')  
    }
    if(input$Jair_Bolsonaro == TRUE){
      lines(df$Semana,df$Jair_Bolsonaro, col='blue',type='b')  
    }
    
    if(input$Marina_Silva == TRUE){
      lines(df$Semana,df$Marina_Silva, col='darkgreen',type='b')  
    }
    if(input$Ciro_Gomes == TRUE){
      lines(df$Semana,df$Ciro_Gomes, col='orange',type='b')  
    }
    
  legend("topleft",
         c("Haddad","Bolsonaro","Ciro","Marina"),
         fill=c("red",'blue','orange','darkgreen')
  )  
  })

    
  
})
