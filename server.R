#server.R
library(shiny)
###################################

shinyServer(



  function(input, output) {
  

  resCallArrivalRate <- reactive ({round(input$HourlyCalls / 3600, digits = 2)})
  resCallDuration  <-  reactive ({input$AverageDuration +  input$AverageWrap })
  
  resTrafficIntensity <- reactive ({ 
    round(
     resCallArrivalRate() * resCallDuration()
     , digits = 2)
  })
  
  resAgents <-  reactive ({ 
    ceiling(
      (resCallArrivalRate() * resCallDuration()) +  sqrt((resCallArrivalRate() * resCallDuration()))
    )
  })
  
  resAgentOccupancy <-  reactive ({(round(resTrafficIntensity() /resAgents(), digits = 3)) * 100 })
  reqServiceLevel <- reactive ({(round(resTrafficIntensity() /resAgents(), digits = 3)) * 100 })
  
  output$CallArrivalRate <- renderPrint({cat(resCallArrivalRate() ,"Second(s)" )}) 
  output$CallDuration  <- renderPrint({cat(resCallDuration() ,"Minute(s)" )})  
  output$TrafficIntensity <- resTrafficIntensity
  output$Agents <-   resAgents 
  output$AgentOccupancy <-  renderPrint({ cat(resAgentOccupancy() ,"%" )})
                             
  output$ServiceLevel <-  renderPrint({ cat(reqServiceLevel() ,"%" )})
  
  output$Lines <- renderText({ calculateLines(input$AverageDuration, input$AverageWrap) })
  output$Avgdelay <- renderText({ calculateAvgdelay(input$AverageDuration, input$AverageWrap) })
 
  
})


