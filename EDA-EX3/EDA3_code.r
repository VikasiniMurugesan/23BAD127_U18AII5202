
print("Vikasini M 23BAD127")

library(ggplot2)
library(GGally)

health_data <- read.csv("3.healthcare_data.csv")
str(health_data)

health_data$AgeGroup <- cut(
  health_data$Age,
  breaks = c(0, 30, 50, 80),
  labels = c("Young", "Middle-aged", "Senior")
)

ggpairs(
  health_data,
  columns = c("Age", "BMI", "Glucose_Level", "Blood_Pressure"),
  aes(color = AgeGroup, alpha = 0.7),
  title = "Scatter Plot Matrix of Patient Health Indicators"
) +
  theme_bw() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 14),
    legend.title = element_text(size = 10),
    legend.text = element_text(size = 9)
  )

cor_matrix <- cor(
  health_data[, c("Age", "BMI", "Glucose_Level", "Blood_Pressure")],
  use = "complete.obs"
)

print("Correlation Matrix:")
print(round(cor_matrix, 2))
