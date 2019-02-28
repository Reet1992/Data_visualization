setwd("C:/Users/Ted/Desktop/19/pracitce/datasets/sam")

read_data <- read.csv('pracitcedatasetssam.csv',header = TRUE)

library(ggplot2)

install.packages("devtools")

library(devtools)


v <- plot(read_data$burglary,read_data$murder)

plotly(v)
library(plotly)
packageVersion('plotly')

p <- plot_ly(midwest, x = ~percollege, color = ~state, type = "box")
p