library(shiny)
library(leaflet)


shinyUI(fluidPage(
  titlePanel("Assignment R markdown and Leaflet"),
  h3("15th of April 2020"),
  p("LoveThisPlace_Bochum"),
  leafletOutput("mymap")
  
))