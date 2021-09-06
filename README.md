# MechaCar Statistical Analysis

## Linear Regression to Predict MPG
- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - After performing our multiple linear regression on several variables we can observe that the following variables have a statistically significant p-value: 
    - Ground Clearance 5.21e-08
    - Vehicle Length 2.60e-12 ***
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
 
 With this data we can observe that the variance for lot 3 exceeds the maximum limit of 100 pounds per square inch while lots 1 and 2 remain under the specified maximum variance
