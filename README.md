# Linear Regression Analysis of Used Toyota Car Sales

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

## Project Overview

The project utilizes statistical techniques to analyze and model the data, providing valuable insights into factors affecting used car prices.

## Data Description

The dataset includes attributes such as Price, Age, KM (kilometers run), HP (Horsepower), and other car features.

## Installation

To run the project:

1. Clone the repository and navigate to the directory.
2. Install R and required packages.
3. Execute the R scripts for analysis.

## Exploratory Data Analysis (EDA)

Initial EDA revealed a negative correlation between Price and KM, suggesting that as KM increases, Price tends to decrease.

## Visualizations

### Scatter Plot (Price vs KM)

Shows the relationship between Price and KM, highlighting the negative trend.

### Residual Plot (Model 1)

Indicates potential issues with the linear regression assumptions due to the pattern of residuals.

### Q-Q Plot (Model 1)

Assesses the normality of residuals, showing deviations, particularly in the tails.

### Histogram of Residuals (Model 1)

Displays the distribution of residuals, highlighting skewness or deviations from normality.

## Linear Regression Model Development

### Model 1: Basic Linear Regression

Focused on the Price-KM relationship, it revealed a moderate negative linear relationship.

### Model 2: Improved Model with Transformation

Implemented due to heteroscedasticity and non-linearity in Model 1. A Box-Cox transformation suggested using the inverse of Price, improving model fit and assumptions adherence.

## Model Comparison and Validation

Model 2 showed an improved R-squared value and better adherence to regression assumptions, compared to Model 1.

## ANOVA for Model Selection

Both a full model with all variables and a reduced model with significant variables were compared. The reduced model was simpler and slightly better in terms of adjusted R-squared.

## Conclusion

The analysis underscores the importance of data transformation in regression and provides insights into factors affecting used car prices, useful for dealers and buyers alike.
