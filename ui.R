

shinyUI(pageWithSidebar(
  headerPanel("Project To Explore SHINY"),
  sidebarPanel(
    sliderInput(inputId="slider1", label = h3("Sliders"),  min = 0, max = 100, value = 50),
    sliderInput(inputId="slider2", "",  min = 0, max = 100, value = c(25, 75))
  ),
  mainPanel(
    h3('Slider Pane Values'),
    h4('Slider 1'),
    textOutput('text1'),
    
    
    h4('Slider 2 : Value 1'),
        textOutput('text2'),
    h4('Slider 2 : Value 2'),
    textOutput('text3'),
    
    h4('Sum of all slider values'),
    textOutput('text4')
    
  )
  
))