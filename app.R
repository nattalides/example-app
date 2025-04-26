library(shiny)

# Define UI for application
ui <- fluidPage(
  
  # Application title
  titlePanel("DEMO SHINY APP"),
  
  "This is the demo shiny app. It is created during the course 
    demonstrations and explanations using the demo data: Wind speed
    (in knots) and air pressure (in millibars) of storms from around
    the world from 1975 to 2015",
  
  sidebarLayout(
    # Sidebar panel
    sidebarPanel(
      "This is the sidebar panel",
      
      # Input: A simple slider ----
      sliderInput(inputId = "slider_1", label = "Slider Label",
                  min = 1,
                  max = 100,
                  value = 50),
      
      # Input: A simple drop down list  ----
      selectInput(inputId = "drop_down_1", label = "Drop Down List Label:",
                  choices = c("Option A", "Option B", "Option C")),
      
      # Input: A simple text input  ----
      textInput(inputId = "text_input", label = "Input text here:")
      
    ),
    
    # Main panel
    mainPanel(
      "This is the main panel",
      
      textOutput(outputId = "text_output")
    )
  )
)

# Define server side logic
server <- function(input, output) {
  
  output$text_output <- renderText({
    # Display text input
    paste("You typed:", input$text_input) 
  })
  
}

# Run the application 
shinyApp(ui = ui, server = server)
