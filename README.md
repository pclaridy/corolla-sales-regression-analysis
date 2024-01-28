# Automotive Analytics: Advanced Regression Models of Toyota Corolla Sales Performance

This project conducts a detailed linear regression analysis on a dataset from a European Toyota car dealer, focusing on the sales prices of used Toyota Corolla cars. The analysis aims to discern how various factors such as age, mileage, horsepower, and other features influence the sales prices.

## Table of Contents

- [Project Overview](#project-overview)
- [Data Description](#data-description)
- [Installation](#installation)
- [Exploratory Data Analysis (EDA)](#exploratory-data-analysis-eda)
- [Visualizations](#visualizations)
- [Linear Regression Model Development](#linear-regression-model-development)
  - [Model 1: Basic Linear Regression](#model-1-basic-linear-regression)
  - [Model 2: Improved Model with Transformation](#model-2-improved-model-with-transformation)
- [Model Comparison and Validation](#model-comparison-and-validation)
- [ANOVA for Model Selection](#anova-for-model-selection)
- [Conclusion](#conclusion)

## Data Description

The dataset, `UsedCars.csv`, consists of various attributes of used Toyota Corolla cars, including:

- **Id**: Identification number of the car.
- **Model**: Model name of the car.
- **Price**: Sales price in Euros.
- **Age**: Age of the car in months (as of August 2004).
- **KM**: Accumulated kilometers on the odometer.
- **HP**: Horsepower of the car.
- **Metallic**: Whether the car has a metallic color (1 for Yes, 0 for No).
- **Automatic**: Whether the car has an automatic transmission (1 for Yes, 0 for No).
- **CC**: Cylinder volume in cubic centimeters.
- **Doors**: Number of doors.
- **Gears**: Number of gears.
- **Weight**: Weight of the car in kilograms.

## Installation

To replicate this analysis:

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/used-toyota-car-sales-analysis.git
   cd used-toyota-car-sales-analysis
2. Install R and required packages.
3. Execute the R scripts for analysis.

## Exploratory Data Analysis (EDA)

Initial EDA revealed a negative correlation between Price and KM, suggesting that as KM increases, Price tends to decrease.

## Visualizations

### Scatter Plot (Price vs KM)

Shows the relationship between Price and KM, highlighting the negative trend.

![Scatter Plot (Price vs KM)](https://github.com/pclaridy/corolla-sales-regression-analysis/blob/main/figures/scatter_plot_price_vs_km.png)

### Residual Plot (Model 1)

Indicates potential issues with the linear regression assumptions due to the pattern of residuals.

![Residual Plot](https://github.com/pclaridy/corolla-sales-regression-analysis/blob/main/figures/residual_plot.png)

### Q-Q Plot (Model 1)

Assesses the normality of residuals, showing deviations, particularly in the tails.

![Q-Q Plot](https://github.com/pclaridy/corolla-sales-regression-analysis/blob/main/figures/qq_plot.png)

### Histogram of Residuals (Model 1)

Displays the distribution of residuals, highlighting skewness or deviations from normality.

![Histogram of Residuals](https://github.com/pclaridy/corolla-sales-regression-analysis/blob/main/figures/histogram_of_residuals.png)

## Linear Regression Model Development

### Model 1: Basic Linear Regression

- R-squared: 0.3824
- F-statistic: 781.4 on 1 and 1262 DF
- p-value: < 2.2e-16

Focused on the Price-KM relationship, it revealed a moderate negative linear relationship.

### Model 2: Improved Model with Transformation

- R-squared: 0.4089
- F-statistic: 873.2 on 1 and 1262 DF
- p-value: < 2.2e-16

Implemented due to heteroscedasticity and non-linearity in Model 1. A Box-Cox transformation suggested using the inverse of Price, improving model fit and assumptions adherence.

## Model Comparison and Validation

Model 2 showed an improved R-squared value and better adherence to regression assumptions, compared to Model 1.

## ANOVA for Model Selection

- Full Model:
  - R-squared: 0.8649, Adjusted R-squared: 0.8639
  - F-statistic: 891.8 on 9 and 1254 DF
  - p-value: < 2.2e-16

- Reduced Model:
  - R-squared: 0.8648, Adjusted R-squared: 0.8642
  - F-statistic: 1341 on 6 and 1257 DF
  - p-value: < 2.2e-16

Both a full model with all variables and a reduced model with significant variables were compared. The reduced model was simpler and slightly better in terms of adjusted R-squared.

## Conclusion

The analysis underscores the importance of data transformation in regression and provides insights into factors affecting used car prices, useful for dealers and buyers alike.
