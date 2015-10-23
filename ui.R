#ui.R
library(shiny)

shinyUI(pageWithSidebar(
  headerPanel(""), 

  sidebarPanel( 
    
      h3('Call Center Calculator'),
      hr(),  
      numericInput("HourlyCalls", label = ("Hourly calls"), value = 720, min = 1),
      
      
      
      sliderInput(inputId = "AverageDuration",
                  label = "Average call duration (s)" ,
                  value = 230, min = 0, max = 1000),
      sliderInput(inputId = "AverageWrap",
                  label = "Average wrap up time (s)" ,
                 value = 10, min = 0, max = 100)   
     
   
  ),

  
    mainPanel(
 
  
      
      h5('Call Arrival Rate'),
      textOutput("CallArrivalRate"),
      
      h5('Avg. Call Duration'),
      textOutput("CallDuration"),
      
  
      
      h5('Number of Agents Required'),
      textOutput("Agents"),
      
      h5('Agent Occupancy'),
      textOutput("AgentOccupancy")
      


   )       
  ))

