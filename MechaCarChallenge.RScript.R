# Load Dependencies/ Libraries
library(tidyverse)
library(dplyr)
# Read csv file to R
MechaCar_mpg_table <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
# Perform the Linear Regression for all six columns
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg_table)
# Determine p-value and R-squared for the linear Regression
Linear_reg_values <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg_table)
summary(Linear_reg_values)


# Suspension Coil Analysis
# Read csv file into Script
Suspension_Coil_table <- read.csv(file='Resources/Suspension_Coil.csv', check.names= F, stringsAsFactors = F)
# Create a Total Summary data frame with summarize function
Total_summary <- Suspension_Coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
# Create a lot summary data frame using group by and summarize function
Lot_summary <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')


# T-Tests on Suspension Coils
# Create RScript using t.test function to determine PSI if different from mean of 1500 pounds
t.test(Suspension_Coil_table$PSI, mu=1500)

# Create RScript using t.test and subset functions to determine if each lot is different from mean of 1500 pounds
# Lot 1 T-Test
t.test(subset(Suspension_Coil_table, Manufacturing_Lot == "Lot1")$PSI, mu= 1500)
# Lot 2 T-Test
t.test(subset(Suspension_Coil_table, Manufacturing_Lot == "Lot2")$PSI, mu= 1500)
# Lot 3 T-Test
t.test(subset(Suspension_Coil_table, Manufacturing_Lot == "Lot3")$PSI, mu= 1500)
