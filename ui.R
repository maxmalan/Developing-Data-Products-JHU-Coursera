library(shiny)
library(ggplot2)
library(DT)
library(tidyverse)

allWinsEarn <- read.csv("allWinsEarn.csv")

ui <- fluidPage(
  
  titlePanel("Grand Slam men's single champions in the Open Era"),
  
  sidebarLayout(
    
    sidebarPanel(
      checkboxGroupInput(inputId = "selected_continent",
                         label = "Select Player's Continent:",
                         choices = levels(allWinsEarn$Continent),
                         selected = levels(allWinsEarn$Continent)),
      
      sliderInput("Age.First.Title", "Age at first title:",
                  min = 0, max = 50, value = c(16, 40), step = 1),
      
      selectInput(inputId = "y",
                  label = "Y-axis:",
                  choices = c("Australian.Open.Wins", "Wimbledon.Wins",
                              "US.Open.Wins", "French.Open.Wins", 
                              "Total.Open.Era.Wins", "French.Open.Earnings",
                              "Wimbledon.Earnings", "Australian.Open.Earnings",
                              "US.Open.Earnings", "Total.Earnings", "Age.First.Title"),
                  selected = "Total.Open.Era.Wins"),
      
      selectInput(inputId = "x",
                  label = "X-axis:",
                  choices = c("Australian.Open.Wins", "Wimbledon.Wins",
                              "US.Open.Wins", "French.Open.Wins", 
                              "Total.Open.Era.Wins", "French.Open.Earnings",
                              "Wimbledon.Earnings", "Australian.Open.Earnings",
                              "US.Open.Earnings", "Total.Earnings", "Age.First.Title"),
                  selected = "Total.Earnings"),
      width = 3
    ),
    
    mainPanel(
      plotOutput(outputId = "scatterplot", brush = "plot_brush"),
      dataTableOutput(outputId = "playerstable"),
      width = 9
    )
  )
)