

shinyUI(pageWithSidebar(
  headerPanel("Project To Explore SHINY"),
  sidebarPanel(
    sliderInput(inputId="slider1", label = h3("Sliders"),  min = 0, max = 100, value = 50),
    sliderInput(inputId="slider2", "",  min = 0, max = 100, value = c(25, 75)),
    
    
    h4('Brief Documentation'),
    p('This widget explores the loading and execution of a SHINY application using reactive functions.'),
    p('Two slider bars are used. One with one slider and the Second with two sliders.'),

    p('The minimum values used are 0 and the maximum used are 100. However for the second slider bar, the controls cannot by pass over each other.'),
      
     p('The project also demonstrates the reactivity of the slider operation. Firstly by displaying slider values as the sliders are moved on each slider bar. Second by displaying the sum of all the slider position values as and when the sliders move.')
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