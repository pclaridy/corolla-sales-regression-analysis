# Read in the car sales data
data <- read.csv("UsedCars.csv", sep = ",", header = TRUE)

# Fit a simple linear regression model
model_1 <- lm(Price ~ KM, data = data)

# Create and save scatter plot of Price vs KM
png("figures/scatter_plot_price_vs_km.png", width = 800, height = 600)
plot(data$KM, data$Price, xlab = "Accumulated Kilometers on Odometer", ylab = "Price (Euros)", pty = 2, lwd = 2)
dev.off()

# Calculate and print the correlation coefficient between Price and KM
correlation_coefficient <- cor(data$Price, data$KM)
print(correlation_coefficient)

# Print summary of the linear regression model
print(summary(model_1))

# Find and print a 95% confidence interval for the slope coefficient
confint(model_1, level = 0.95)

# Create and save the residual plot
png("figures/residual_plot.png", width = 800, height = 600)
plot(model_1$fitted.values, model_1$residuals, xlab="Fitted Values", ylab="Residuals", main="Residual Plot", pch = 20)
abline(h = 0, col = "red")
dev.off()

# Load library for Q-Q plot
library(car)

# Create and save the Q-Q plot
png("figures/qq_plot.png", width = 800, height = 600)
qqnorm(model_1$residuals, main = "Q-Q Plot")
qqline(model_1$residuals, col = "red")
dev.off()

# Create and save the histogram of residuals
png("figures/histogram_of_residuals.png", width = 800, height = 600)
hist(model_1$residuals, main = "Histogram of Residuals", xlab = "Residuals")
dev.off()

# Part C: ANOVA - Comparing Full and Reduced Models

# Define full and reduced models
model_full <- lm(Price ~ Age + KM + HP + Metallic + Automatic + CC + Doors + Gears + Weight, data = data)
model_reduced <- lm(Price ~ Age + KM + HP + Automatic + Gears + Weight, data = data)

# Summaries of the full and reduced models
summary_full <- summary(model_full)
summary_reduced <- summary(model_reduced)

# Retrieve and print R-squared and Adjusted R-squared values
rsquared_full <- summary_full$r.squared
adjusted_rsquared_full <- summary_full$adj.r.squared
rsquared_reduced <- summary_reduced$r.squared
adjusted_rsquared_reduced <- summary_reduced$adj.r.squared

cat("R-squared (R²):\n")
cat("  Full Model:", rsquared_full, "\n")
cat("  Reduced Model:", rsquared_reduced, "\n")
cat("Adjusted R-squared (Adjusted R²):\n")
cat("  Full Model:", adjusted_rsquared_full, "\n")
cat("  Reduced Model:", adjusted_rsquared_reduced, "\n")

# Prediction using both models
new_data <- data.frame(Age = 1, KM = 1, HP = 192, Metallic = 1, Automatic = 1, CC = 1, Doors = 1, Gears = 1, Weight = 1)
prediction_full <- predict(model_full, newdata = new_data, interval = "prediction", level = 0.95)
prediction_reduced <- predict(model_reduced, newdata = new_data, interval = "prediction", level = 0.95)

# Print the predictions from both models
print(prediction_full)
print(prediction_reduced)
