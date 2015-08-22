library(shiny)

shinyServer(
  function(input, output) {
    
    a<-reactive({as.numeric(input$slider1)})
    b<-reactive({as.numeric(input$slider2[1])})
    c<-reactive({as.numeric(input$slider2[2])})
    d<-reactive({(a())+(b())+(c())})
    output$text1 <- renderText({a()})
    output$text2 <- renderText({b()})
    output$text3 <- renderText({c()})
    output$text4 <- renderText({d()})
    
  
  }
)