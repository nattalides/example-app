library(shiny)

# Define UI for application
ui <- fluidPage(
    
    # Application title
    titlePanel("Title goes here"),
    
    sidebarLayout(
        # Sidebar panel
        sidebarPanel(
        ),
        
        # Main panel
        mainPanel(
        )
    )
)

# Define server side logic
server <- function(input, output) {}

# Run the application 
shinyApp(ui = ui, server = server)
