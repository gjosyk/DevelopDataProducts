library(shiny)
library(RCurl)
library(caret)
mpgData <- getURL("https://github.com/gjosyk/datasciencecoursera/blob/master/mpg.csv")
mpgData <- read.csv(text = mpg)
mpgData
model <- train(mpg ~ cyl + disp + horse + weight + accel + year + origin, method="glm", data=mpgData)
shinyServer(
  function(input, output) { 
    output$prediction <- renderPrint ({
      cyl = input$cyl
      disp = input$disp
      horse = input$horse
      weight = input$weight
      accel = input$accel
      year = input$year
      origin = input$origin
      predict(model,data.frame(cyl, disp, horse, weight, accel, year, origin))})
  }
)