# MechaCar Statistical Analysis

## Linear Regression to Predict MPG
- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - After performing our multiple linear regression on several variables we can observe that the following variables have a statistically significant p-value: 
    - Ground Clearance 5.21e-08
    - Vehicle Length 2.60e-12 ***
    - Intercept 5.08e-08

- Is the slope of the linear model considered to be zero? Why or why not?
  Linear regression tests the following hypotheses:
    - H0 : The slope of the linear model is zero, or m = 0
    - Ha : The slope of the linear model is not zero, or m ≠ 0

    - Given that our R-squared value is 0.7149 and our p-value is 5.35e-11 we can reject our null hypothesis, meaning that the slope of our linear model is not zero

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  - Yes, because r-squared represents about 71% of the variability of our dependent varaible (mpg) while our p-value remained significant by remaining above the significance level of 0.05%
