# Importing Library dyplyr
library(dplyr) 

# Deliverable 1
# Reading MechaCar_Mpg.csv File as a DataFrame
mpg_df <- read.csv(file='/Users/kermitbravo/Desktop/UT/Module 15/MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)
class(mpg_df)
head(mpg_df)
# Performing Multiple Linear Regression on all variables from the MechaChar DataFrame
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df)

# Determining p-value & r2 value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_df)) #generate summary statistics

# Deliverable 2
# Reading the Suspension_Coil.csv File as a Table/DF
suspension_df <- read.csv(file='/Users/kermitbravo/Desktop/UT/Module 15/Suspension_Coil.csv',check.names = F, stringsAsFactors = F)
head(suspension_df)
# Script to create total_summary using summarize() on PSI Column
total_summary <- suspension_df %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
# Script to create a lot_summary df using group_by and summarize() on PSI Column
lot_summary <- suspension_df %>% group_by(Manufacturing_Lot) %>%summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')


# Deliverable 3
population_table <- read.csv(file='/Users/kermitbravo/Desktop/UT/Module 15/Suspension_Coil.csv',check.names = F, stringsAsFactors = F)
# t-test that compares all manufacturing lots against mean PSI of population (1,500 pounds per sq inch)
t.test(population_table$PSI,mu=1500) #compare sample versus population means

# 3 t-tests compare each manufacturing lot against mean PSI of population ( 1,500 pounds per sq inch)
Lot1 <- subset(population_table, Manufacturing_Lot == 'Lot1')
t.test(Lot1$PSI,mu=1500) #compare sample versus population means

Lot2 <- subset(population_table, Manufacturing_Lot == 'Lot2')
t.test(Lot2$PSI,mu=1500) #compare sample versus population means

Lot3 <- subset(population_table, Manufacturing_Lot == 'Lot3')
t.test(Lot3$PSI,mu=1500) #compare sample versus population means
