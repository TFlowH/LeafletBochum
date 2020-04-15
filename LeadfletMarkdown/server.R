library(shiny)
library(leaflet)
library(plyr)


pop <- c("Bochum")
lat <- c(51.4818445)
lng <- c(7.2162363)

df <- data.frame(pop, lat, lng)

shinyServer(function(input, output) {
  
  output$mymap <- renderLeaflet({
    df %>% leaflet() %>%
      addProviderTiles("Esri.WorldImagery") %>%
      addMarkers() %>% setView(lat=51.481844, lng=7.2162363, zoom=5)
  })
})




