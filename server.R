library(shiny)
library(shinydashboard)
library(ggplot2)
shinyServer(function(input,output){
  output$lineplot <- renderPlot({
    ggplot(Aerials_data)+ geom_line(mapping=aes(x=Year,y=Average.R.M,color="red"))
})
})


