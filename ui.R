library(shiny)
library(caret)
shinyUI (
  pageWithSidebar (
    headerPanel ("Predict Vehicle Miles Per Gallon - UCI Auto MPG Data Set "),
    
    sidebarPanel (
      numericInput('cyl', 'Cylinders', 6, min = 3, max= 8, step = 1),
      numericInput('disp', 'Displacement', 200, min = 70, max= 450, step = 10),
      numericInput('horse', 'Horsepower', 150, min = 50, max= 230, step = 5),
      numericInput('weight', 'Weight (lbs)', 3500, min = 1650, max= 5000, step = 50),
      numericInput('accel', 'Acceleration', 16, min = 8, max= 24, step = 1),
      numericInput('year', 'Year (70 - 82)', 76, min = 70, max= 82, step = 1),
      numericInput('origin', 'Origin (1 = usa; 2 = europe; 3 = japan)', 1, min = 1, max= 3, step = 1),
      submitButton('Submit')
    ),
    mainPanel (
      h2 ('Results - Predicted MPG:'),
      textOutput("prediction")
    )
  )
  
)