library(shiny) 

BFC <- function(gender,height,waist,neck,hip){(86.010*log10(waist-neck)-70.041*log10(height)+36.76)}
FM <- function(gender,weight,height,waist,neck,hip){((86.010*log10(waist-neck)-70.041*log10(height)+36.76)/100)*weight}
LM <- function(gender,weight,height,waist,neck,hip){weight-(((86.010*log10(waist-neck)-70.041*log10(height)+36.76)/100)*weight)}


shinyServer(
  function(input, output) {
    
    output$BF <- renderPrint({BFC(input$gender,input$height,input$waist,input$neck,input$hip)})
    output$FM <- renderPrint({FM(input$gender,input$height,input$weight,input$waist,input$neck,input$hip)})
    output$LM <- renderPrint({LM(input$gender,input$height,input$weight,input$waist,input$neck,input$hip)})
    
  } 
)