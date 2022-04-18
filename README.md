# MECHACAR STATISTICAL ANALYSIS

## **Linear Regression to Predict MPG**

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - The Vehicle lenght and ground clearance and intercept coefficients provided a non-random amount of variance to the mpg values.

- Is the slope of the linear model considered to be zero? Why or why not?
  - The slope of the linear model is not zero. Assuming a significance level of 0.05%, the p-value of the linear regression is 5.35 X 10^-11 which is smaller than the significance level, therefore there is significant evidence to reject the hypothesis that the slope is zero.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? 
  - No. Since the intercept is statistically significant, there maybe other that are significant to the MPG. This means the vehicle lenght and ground clearance may need scaling to help improve the predictive power of the model, or other variables that have been excluded.

## **Summary Statistics on Suspension Coils**

- Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? 
  - From the image below, it can be concluded that the current manufacturing data meet this design specification for all manufacturing lots in total. This is because the variance is 62.29 which lower than the acceptable suspension coils of 100 pounds.

![Total Summary Data](/Resources/total_summary.png)

  - From the image below, it can be concluded that the current manufacturing data meets this design specification for the first and second lots but not the third lot. Both Lot 1 and Lot 2 has a variance lower than the 100. Lot 3 on the other hand has a variance of 170.3

![Lots Summary Data](/Resources/lot_summary.png)

## **T-Tests on Suspension Coils**

From the image below, p-value for the sample data is 0.06. Assuming a significance level of 0.05 percent, there is not sufficient evidence to reject the null hypothesis of the one sample T-test. This confirms that the two Means, that is, the Mean across all manufacturing lots and the population Mean, are statistically similar. 

![T-Test on all Manufacturing Lots](/Resources/Summary_test.png)

From the image below, p-value is equal to 1. Assuming a significance level of 0.05, we do not have enough evidence to reject the null hypothesis therefore we fail to reject the null hypothesis. The two Means are statistically similar

![Lot 1 T-Test](/Resources/Lot1_test.png)

From the image below, the calculated p-value is 0.607, which if higher the assumed significance level of 0.05. Therefore, we do not have enough evidence to reject the null hypothesis. Both Means are not statistically different.

![Lot 2 T-Test](/Resources/Lot2_test.png)

From the calculated p-value in the image below, the p-value which is 0.04 is lower than the assumed significance level of 0.05. Therefore we have sufficient evidence to reject the null hypothesis. The two Means are statistically different.
![Lot 3 T-Test](/Resources/Lot3_test.png)

In summary, the total summary, lot 1 and lot 2 Means are statistically similar to the calculated mean of the population (mu= 1500). However, lot 3 Mean is statistically different. Therefore, we only have enough evidence to reject the Lot 3 null hypothesis.

## **Study Design: MechaCar Vs Competiton**

As the demand for Electric vehicles, MechaCar wants to increase its production to meet the growing need. To assist MechaCar,a statistical study will be perfomed on the need to increase the production of MechaCar as it competes against other Electric vehicle production. The metrics are  **Cost of Ownership**, **Reliability**, **Ev Motor Performance**, **Interior**, **Safety rating**, **Battery Range** and **Life**, **Waranty** and **Maintenance coverage**. Current consumers on the market consider the above metrics to decide which vehicle to buy. 

**Hypothesis**
H<sub>0: MechaCar demand is high and prefered to its competitors. 
H<sub>a: MechaCar does not have a high demand and not prefered compared to its competitors.

The statisitcal test to be used to test the hypothesis will be the One sample T-Test. This test is easy to perform, interpret and understand. 
The data needed to run statistical test will be obtained from expert anaylysis and current owners survey.