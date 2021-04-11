# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
#### According to our results, vehicle length and groung clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. hence, they have a significant impact on mpg, which means there are other variables and factors that contribute to the variation in mpg that have not been included in our model
### Is the slope of the linear model considered to be zero? Why or why not?
#### In addition, the p-value of our linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.
### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
#### The Multiple R-squared value is 0.7149, which states that effectively predicts hte mpg of MechaCar Prototype. It will stary true for 71% of the time.

## Summary Statistics on Suspension Coils
#### From the Lot_summary table (https://github.com/arjunkannawar/MechaCar_Statistical_Analysis/blob/main/Lot_Summary.png), we can see that, Lot 1 and Lot 2 have cleared the design specification permissible limits. Amongst all the lots, Lot 1 seems to be performing the best and Lot 2 is a close second. However, Lot 3 is not inline with the design specifications.
#### It is evident from the Lot_summary table (https://github.com/arjunkannawar/MechaCar_Statistical_Analysis/blob/main/Lot_Summary.png) that the Variance for Lot 3 exceeds the design specification permissible limit of 100 pounds per square inch and therefore cannot be cleared.

## T-Tests on Suspension Coils

#### The Null Hypothesis is that, "There is no statistical difference between the PSI of all the manufacturing lots in the observed sample mean and the poulation mean."
#### The Alternate Hypothesis is that, "There is a statistical difference between the the PSI of all the manufacturing lots in the observed sample mean and its presumed population mean."

#### For the comparison between the Mean of a sample vs the the population mean of all the lots included is 0.9096. Hence, we do not have sufficient evidence to reject the null hypothesis, and we can state that the two means are statistically similar.

## Study Design: MechaCar vs Competition

#### 1. The more Metrics we can have access to, the better the analysis. The metrics needed, for example, would be Vehicle_length, vehicle_weight, AWD, Spoiler Angle, Groung clearance and mpg etc. for MechaCar and the competition brand. 

#### 2. Null Hypothesis: There is no statistical differnce between the PSI of MechaCar performace vs the competition brand performance
#### Alternate Hypthesis: There is a Statustical difference betwee th PSI of MechaCar perfomrace vs the competition brand performance

#### 3. I would use the MUltiple linear regression and the t.test to compare the performcae of the respective parameters.

#### 4. We need the Data for the mEtrcis mentioned in above for MechaCara nd the competition brand to compare the performances.
