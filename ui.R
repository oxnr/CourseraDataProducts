library(shiny)
library(rCharts)

shinyUI(fluidPage(
    div(class = "hero-unit",
        h1("Yahoo Finance Stock Forecast")
    ),
    h2("Get Started"),
    div(class = "alert alert-info",
        p("This application lets you forecast some predefined stocks. All the information is coming from yahoo finance using the quantmod package."),
        p("User inputs:"),
        tags$ol(
            tags$li("The available Stock symbols are AAPL (Apple), AMZN (Amazon), CRM (Salesforce), GOOG (Google), MSFT (Microsoft) and , NFLX (Netflix)"),
            tags$li("Date range")
        ),
        p('Select the "Do it for Coursera! button to update the chart.'),
        p("Legend:"),
        tags$ol(
            tags$li("Closing Price information."),
            tags$li("ForecastL: Lower Bound of 95% confidence interval."),
            tags$li("ForecastH: Upper Bound of 95% confidence interval.")
        ),
        p("Feedback is very much appreciated!")        
    ),
    
    fluidRow(
        column(2,
               wellPanel(
                   selectInput("symb", label="Symbol", choices = c("AAPL","AMZN","CRM","GOOG","MSFT","NFLX")
                               , selectize = FALSE),
                   dateRangeInput("dates", 
                                  "Date range",
                                  start = "2015-01-01", 
                                  end = as.character(Sys.Date())),
                   submitButton("Do it for Coursera!")
               )
        ),
        column(10,
               showOutput("stockChart", "nvd3")
        )
    )
))
