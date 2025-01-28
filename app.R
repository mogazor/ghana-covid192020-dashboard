### GHANA COVID 19 DATASET MARCH 2020-2021 ####

# Load required libraries
library(shiny)
library(ggplot2)
library(readr)
library(rsconnect)


# Load dataset
Ghana_Covid19_DailyActive <- read_csv("Ghana_Covid19_DailyActive.csv")

# Ensure the date column is properly formatted as Date
Ghana_Covid19_DailyActive$date <- as.Date(Ghana_Covid19_DailyActive$date, format = "%m/%d/%Y")


# Define UI
ui <- fluidPage(
  titlePanel("COVID-19 in Ghana: Interactive Dashboard"),
  sidebarLayout(
    sidebarPanel(
      selectInput("metric", "Select Metric to Visualize:",
                  choices = c("Cumulative Confirmed" = "cumulative_confirmed",
                              "Cumulative Recovered" = "cumulative_recovered",
                              "Cumulative Death" = "cumulative_death")),
      dateRangeInput("dateRange", "Select Date Range:",
                     start = min(Ghana_Covid19_DailyActive$date),
                     end = max(Ghana_Covid19_DailyActive$date))
    ),
    mainPanel(
      plotOutput("plot")
    )
  )
)

# Define Server
server <- function(input, output) {
  output$plot <- renderPlot({
    filtered_data <- Ghana_Covid19_DailyActive[
      Ghana_Covid19_DailyActive$date >= input$dateRange[1] &
        Ghana_Covid19_DailyActive$date <= input$dateRange[2], ]
    
    ggplot(filtered_data, aes(x = as.Date(date))) +
      geom_line(aes_string(y = input$metric, color = shQuote(input$metric))) +
      labs(title = "COVID-19 Trends in Ghana",
           x = "Date",
           y = "Count",
           color = "Metric") +
      theme_minimal()
  })
}

# Run the Shiny app
shinyApp(ui = ui, server = server)



