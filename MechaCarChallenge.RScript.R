library(tidyverse)

#deliverable 1
MechaCar_df <- read.csv('/Users/arjunkannawar/Documents/Uoft - data analytics/R - Module 15/MechaCar_Statistical_Analysis/MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import csv files as a data frame
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_df) #create linear model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_df)) #generate summary statistics

#deliverable 2
Suspension_coil_df <- read.csv('/Users/arjunkannawar/Documents/Uoft - data analytics/R - Module 15/MechaCar_Statistical_Analysis/Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import csv files as a data frame
Total_summary <- Suspension_coil_df %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),sd(PSI), .groups = 'keep') #create summary table with multiple columns
Lot_summary <- Suspension_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),sd(PSI), .groups = 'keep') #create summary table with multiple columns

#deliverable 3
sample_table <- Suspension_coil_df %>% sample_n(50) #randomly sample 50 data points
t.test(log10(sample_table$PSI),mu=mean(log10(Suspension_coil_df$PSI))) #compare sample versus population means
#t.test(log10(sample_table$PSI=="Lot1"),mu=mean(log10(Suspension_coil_df$PSI=="Lot1"))) #compare sample versus population means


#Test_1 <- Suspension_coil_df %>% subset=(Suspension_coil_df$Manufacturing_Lot = 'Lot1')
t.test(log10(sample_table$PSI),mu=mean(log10(Suspension_coil_df$PSI),subset=(Suspension_coil_df$Manufacturing_Lot = 'Lot1'))) #compare sample versus population means
t.test(log10(sample_table$PSI),mu=mean(log10(Suspension_coil_df$PSI),subset=(Suspension_coil_df$Manufacturing_Lot = 'Lot2'))) #compare sample versus population means
t.test(log10(sample_table$PSI),mu=mean(log10(Suspension_coil_df$PSI),subset=(Suspension_coil_df$Manufacturing_Lot = 'Lot3'))) #compare sample versus population means

#xyz_table <- Suspension_coil_df %>% group_by(Manufacturing_Lot=='Lot1')
#xyz_table_2 <- Suspension_coil_df %>% group_by(Manufacturing_Lot=='Lot1') %>% sample_n(50)
#Manufacturint_lot <- Suspension_coil_df %>% group_by(Manufacturing_Lot=='Lot1') #randomly sample 20 data points