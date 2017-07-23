library(lubridate)
library(reshape2)
library(ggplot2)
library(ggplot)

# Read the thermo data
thermoData <- read.csv("~/Desktop/thermo.csv", 
                          header=TRUE)
print(thermoData) 

ggplot(thermoData, aes(time)) + 
  geom_line(aes(y = SP, linetype="solid")) + 
  if(thermoData$State > 5) geom_line(aes(y = SP, colour="red")) + 
  geom_line(aes(y = Ambient, linetype="dashed")) +
  geom_line(aes(y = Inside, linetype="dotdash")) +
  geom_line(aes(y = Fermenter, linetype="longdash")) +
  labs(linetype = "Temp Source") +
  labs(x = "Time Increment") +
  labs(y = "Temp / F")


