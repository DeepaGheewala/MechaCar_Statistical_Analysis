# Use the library() function to load the dplyr package
library(dplyr)
library(tidyverse)

# Read csv file 
mechaCar_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) 

#Perform Linear regression using multiple variables for predicting mpg
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCar_table) 

#Determine P and R-squared value 
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCar_table))

# The P values is nearly 0 so thee is significance that we reject the null Hypothisis.
# R-squared is o.71  which means the variables are strongly correlated 
