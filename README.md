# MechaCar Statistical Analysis

## Linear Regression to Predict MPG
- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - After performing our multiple linear regression on several variables we can observe that the following variables have a statistically significant p-value: 
    - Ground Clearance 5.21e-08
    - Vehicle Length 2.60e-12
    - Intercept 5.08e-08
    
 ![Multiple Linear Regression](/Resources/Deliverable1.png)

- Is the slope of the linear model considered to be zero? Why or why not?
  Linear regression tests the following hypotheses:
    - H0 : The slope of the linear model is zero, or m = 0
    - Ha : The slope of the linear model is not zero, or m ≠ 0

    - Given that our R-squared value is 0.7149 and our p-value is 5.35e-11 we can reject our null hypothesis, meaning that the slope of our linear model is not zero

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  - Yes, because r-squared represents about 71% of the variability of our dependent varaible (mpg) while our p-value remained significant by remaining above the significance level of 0.05%

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 
- Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

 - When analyzing our data as a whole ( total ), we can that our variance as a total is below our maximum variance limit of 100 punds per square inch
 
 ![Total Summary ](/Resources/Deliverable2_TotalSummary.png)
 
 
  - When analyzing our data per lots,  we can that our variance per lot is as follows: 
 
 ![Lot Summary](/Resources/Deliverable2_LotSummary.png)
 
 With this data we can observe that the variance for lot 3 exceeds the maximum limit of 100 pounds per square inch while lots 1 and 2 remain under the specified maximum variance.
 
## T-Tests on Suspension Coils

For this section we will use t-test to compare the means of two groups. 

With this test, we are trying to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch if analyzed as a whole or individually.

We've split this analysis in 2 main sub-sections. 

### Testing Population

![t-test All](/Resources/Deliverable3_All.png)
 
By observing our t-test results when leveraging our complete population as the metric against the population mean of 1,500 pounds per square inc, we can observe that the p-value is not statistically significant ( > 0.05 ). Which means we cannot reject our null hypothesis and say with high confidence that the difference is close to zero between the mean of the two groups.
   
### Testing Samples of the population

![t-test Lot1](/Resources/Deliverable3_Lot1.png)
 
By observing our t-test results when leveraging a subset of the population (sample) for Lot 1 against the population mean of 1,500 pounds per square inc, we can observe that the p-value is not statistically significant ( > 0.05 ). Which means we cannot reject our null hypothesis. Which means we cannot reject our null hypothesis and say with high confidence that the difference is close to zero between the mean of the two groups.
  
  
![t-test Lot2](/Resources/Deliverable3_Lot2.png)
 
By observing our t-test results when leveraging a subset of the population (sample) for Lot 2 against the population mean of 1,500 pounds per square inc, we can observe that the p-value is not statistically significant ( > 0.05 ).  Which means we cannot reject our null hypothesis and say with high confidence that the difference is close to zero between the mean of the two groups.
   
   
![t-test Lot3](/Resources/Deliverable3_Lot3.png)
 
By observing our t-test results when leveraging a subset of the population (sample) for Lot 3 against the population mean of 1,500 pounds per square inc, we can observe that the p-value IS statistically significant ( < 0.05 ). Which means we can reject our null hypothesis and with a high degree of confidence say that the true difference between the two groups is not close to zero.


## Study Design: MechaCar vs Competition.

What metric or metrics are you going to test?

What is the null hypothesis or alternative hypothesis?

What statistical test would you use to test the hypothesis? And why?

What data is needed to run the statistical test?
