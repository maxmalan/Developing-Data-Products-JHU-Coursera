library(shiny)
library(ggplot2)
library(DT)
library(tidyverse)

allWinsEarn <- read.csv("allWinsEarn.csv")

server <- function(input, output){
  
  output$scatterplot <- renderPlot({
    
    filtered <- allWinsEarn %>%
      subset(Continent %in% input$selected_continent &
               Age.First.Title >= input$Age.First.Title[1] & Age.First.Title <= input$Age.First.Title[2])    
    
    ggplot(data = filtered, 
           aes_string(x = input$x, y = input$y, size = "Age.First.Title")) + 
      geom_point(aes_string(fill = "Slams.in.One.Year"), alpha = 0.8, pch = 21, color = "black") + 
      theme(panel.background = element_rect(fill = "darkolivegreen1", colour = "black")) + 
      scale_fill_manual(values = c("1 Slam in 1 Year" = "yellow",
                                   "Grand Slam" = "gold4",
                                   "3 Slams in 1 Year" = "gold3",
                                   "2 Slams in 1 Year" = "gold")) +
      scale_size_continuous(range = c(4, 10)) + 
      guides(fill = guide_legend(override.aes = list(size=8))) 
  })
  
  output$playerstable <- DT::renderDataTable({
    
    filtered <- allWinsEarn %>%
      subset(Continent %in% input$selected_continent &
               Age.First.Title >= input$Age.First.Title[1] & Age.First.Title <= input$Age.First.Title[2])    
    
    brushedPoints(filtered, input$plot_brush) %>%
      select(Player, Australian.Open.Wins, Wimbledon.Wins,
             US.Open.Wins, French.Open.Wins, 
             Total.Open.Era.Wins, French.Open.Earnings,
             Wimbledon.Earnings, Australian.Open.Earnings,
             US.Open.Earnings, Total.Earnings, Age.First.Title)
  })
  
}
