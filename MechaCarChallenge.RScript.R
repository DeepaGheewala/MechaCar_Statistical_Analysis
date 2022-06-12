# Deliverable 1: Linear Regression to Predict MPG
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


# Deliverable 2: Create Visualizations for the Trip Analysis 

#Read the suspension coil data

suspensionCoil_table <- read.csv('Suspension_Coil.csv',check.names = F, stringsAsFactors = F)

# Generate Coil data summary
total_summary = summarize(suspensionCoil_table, Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#Generate Manufacturing Lot wise summary
lot_summary <- suspensionCoil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))


#Delivery 3:T-Test on Suspension Coils
# 1. Use the t.test() function to determine if the PSI across all manufacturing lots is statistically
# different from the population mean of 1,500 pounds per square inch.
t.test(suspensionCoil_table$PSI,mu=1500)

# 2.The PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
#For Lot 1
t.test(subset(suspensionCoil_table,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

#Lot2
t.test(subset(suspensionCoil_table,Manufacturing_Lot=="Lot2")$PSI,mu = 1500) 

#Lot3 
t.test(subset(suspensionCoil_table,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)


