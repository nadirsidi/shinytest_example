library(shiny)
library(DT)
library(dplyr)

# Define UI for application that draws a histogram
ui <- fluidPage(
   
   # Application title
   titlePanel("shinytest Example App"),
   
   # Sidebar with a slider input for number of bins 
   sidebarLayout(
      sidebarPanel(
         sliderInput("scale",
                     "Scaling Factor:",
                     min = 1,
                     max = 10,
                     value = 5)
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
         DT::dataTableOutput("dtScaled")
      )
   )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
   
  set.seed(42)
  dummyData <- data.frame(x = 1:10, y = rnorm(10, mean = 10, sd = 2))
  
  scaledData <- reactive({
    dummyData[, "y"] <- dummyData[, "y"] * input$scale
    return(dummyData)
  })
  
  # To actually test the DT values, we need to export them
  exportTestValues(scaledData = scaledData())
  
  output$dtScaled <- DT::renderDataTable(scaledData(), rownames=F)
}

# Run the application 
shinyApp(ui = ui, server = server)

