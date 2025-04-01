# **Automotive Analytics: Advanced Regression Models of Toyota Corolla Sales Performance**

## **Table of Contents**
1. [Problem Statement](#1-problem-statement)  
2. [Data Source](#2-data-source)  
3. [Data Cleaning & Preprocessing](#3-data-cleaning--preprocessing)  
4. [Exploratory Data Analysis (EDA)](#4-exploratory-data-analysis-eda)  
5. [Modeling Approach](#5-modeling-approach)  
6. [Evaluation Metrics](#6-evaluation-metrics)  
7. [Outcome](#7-outcome)  
8. [Tools Used](#8-tools-used)  
9. [Business Impact / Use Case](#9-business-impact--use-case)

---

## **1. Problem Statement**

Car dealerships and used car buyers often rely on intuition or generic depreciation tables to estimate resale prices, which can lead to inconsistent or inaccurate pricing decisions. This project aims to build data-driven regression models that quantify how specific vehicle attributes — such as mileage, age, engine size, and weight — influence the resale value of used Toyota Corolla cars. It also explores the impact of model transformation and feature selection on improving predictive accuracy and adherence to regression assumptions. The goal is to enhance pricing transparency and support better decision-making in dealership operations and customer negotiations.

---

## **2. Data Source**

The dataset [`UsedCars.csv`](https://github.com/pclaridy/corolla-sales-regression-analysis/blob/main/UsedCars.csv) is sourced from a European Toyota dealership and includes the following variables:

- **Id**: Car identifier  
- **Model**: Name of the vehicle model  
- **Price**: Selling price in Euros  
- **Age**: Age in months as of August 2004  
- **KM**: Odometer reading (kilometers)  
- **HP**: Horsepower  
- **Metallic**: Metallic paint (1 = Yes, 0 = No)  
- **Automatic**: Automatic transmission (1 = Yes, 0 = No)  
- **CC**: Engine displacement in cubic centimeters  
- **Doors**: Number of doors  
- **Gears**: Number of gears  
- **Weight**: Vehicle weight in kilograms

---

## **3. Data Cleaning & Preprocessing**

- Checked variable types and ensured consistency  
- Verified missing values and handled any necessary imputation  
- Removed outliers or unrealistic records  
- Investigated residuals and normality of response variable  
- Applied Box-Cox transformation to stabilize variance and improve linearity  

---

## **4. Exploratory Data Analysis (EDA)**

### Initial Observation

A negative correlation between price and odometer reading (KM) was observed, suggesting that higher mileage leads to lower resale prices.

### Visualizations

**Scatter Plot: Price vs. KM**  
Illustrates the inverse relationship between price and mileage.  
![Scatter Plot (Price vs KM)](https://github.com/pclaridy/corolla-sales-regression-analysis/blob/main/figures/scatter_plot_price_vs_km.png)

**Residual Plot (Model 1)**  
Exposes patterns indicating non-constant variance and violations of linear regression assumptions.  
![Residual Plot](https://github.com/pclaridy/corolla-sales-regression-analysis/blob/main/figures/residual_plot.png)

**Q-Q Plot (Model 1)**  
Assesses normality of residuals, with visible tail deviations.  
![Q-Q Plot](https://github.com/pclaridy/corolla-sales-regression-analysis/blob/main/figures/qq_plot.png)

**Histogram of Residuals (Model 1)**  
Shows skewed residual distribution, reinforcing the need for transformation.  
![Histogram of Residuals](https://github.com/pclaridy/corolla-sales-regression-analysis/blob/main/figures/histogram_of_residuals.png)

---

## **5. Modeling Approach**

### Model 1: Basic Linear Regression

- Predicts price based solely on mileage  
- **R-squared**: 0.3824  
- **F-statistic**: 781.4 on 1 and 1262 DF  
- **p-value**: < 2.2e-16  
- Residual diagnostics revealed heteroscedasticity and skewness  

### Model 2: Linear Model with Transformation

- Applied Box-Cox transformation to the response variable (Price)  
- Inverse of Price yielded best adherence to model assumptions  
- **R-squared**: 0.4089  
- **F-statistic**: 873.2 on 1 and 1262 DF  
- Improved fit and assumption compliance  

### Full and Reduced Multiple Regression Models

- **Full Model**: Included all numerical and categorical predictors  
  - **R-squared**: 0.8649  
  - **Adjusted R-squared**: 0.8639  
  - **F-statistic**: 891.8 on 9 and 1254 DF  
- **Reduced Model**: Selected using p-values and stepwise regression  
  - **R-squared**: 0.8648  
  - **Adjusted R-squared**: 0.8642  
  - **F-statistic**: 1341 on 6 and 1257 DF  

This variable selection process was guided by a blend of statistical significance, model simplicity, and domain intuition, which helped balance performance with interpretability.

---

## **6. Evaluation Metrics**

In addition to R-squared and adjusted R-squared, the models were assessed using:

- **RMSE (Root Mean Squared Error)**: Evaluates the magnitude of prediction errors  
- **MAE (Mean Absolute Error)**: Measures average absolute error across all predictions  

These additional metrics provide context for real-world interpretability of prediction accuracy, especially important when estimating monetary values like vehicle prices.

---

## **7. Outcome**

- Model transformation improved performance by correcting skewness and stabilizing variance  
- The reduced model achieved nearly identical accuracy with fewer predictors, demonstrating the benefit of simplicity  
- Mileage (KM), Age, and Weight emerged as key predictors of price  
- Diagnostics helped identify violations of regression assumptions, which were successfully addressed with transformations  
- While the model captured strong linear trends, it did not include interaction effects or nonlinear relationships  
- Future work could incorporate tree-based models or external data like brand perception, market demand, or service records to further enhance predictive power

---

## **8. Tools Used**

- **Language**: R  
- **Libraries**: `ggplot2`, `dplyr`, `car`, `MASS`, `lmtest`  

---

## **9. Business Impact / Use Case**

This analysis supports decision-making for used car dealerships, pricing analysts, and buyers by:

- Quantifying how specific features impact resale prices  
- Improving pricing consistency through a data-driven approach  
- Offering a transparent modeling strategy that can be communicated to non-technical stakeholders  
- Supporting tools like dealership pricing calculators or trade-in estimators  
- Enabling cost-effective decisions when purchasing or marketing used inventory
