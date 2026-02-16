print("Vikasini M 23BAD127")
library(ggplot2)
library(dplyr)
library(tidyr)
ecom_data <- read.csv("2.ecommerce_transactions.csv")
str(ecom_data)
summary(ecom_data)
#HISTOGRAM
ggplot(ecom_data, aes(x = Transaction_Amount)) +
  geom_histogram(binwidth = 500, fill = "steelblue", color = "black") +
  labs(title = "Distribution of Transaction Amounts",
       x = "Transaction Amount",
       y = "Frequency") +
  theme_minimal()
#BOX PLOT
ggplot(ecom_data, aes(y = Transaction_Amount)) +
  geom_boxplot(fill = "orange", outlier.color = "red") +
  labs(title = "Boxplot of Transaction Amounts",
       y = "Transaction Amount") +
  theme_minimal()
#HEATMAP
ecom_data <- ecom_data %>%
  mutate(
    Transaction_Date = as.Date(Transaction_Date),
    Month = format(Transaction_Date, "%B")
  )
monthly_sales <- ecom_data %>%
  group_by(Month) %>%
  summarise(Total_Sales = sum(Transaction_Amount))
ggplot(monthly_sales, aes(x = Month, y = "Sales", fill = Total_Sales)) +
  geom_tile(color = "white") +
  labs(title = "Monthly Sales Intensity Heatmap",
       x = "Month",
       y = "",
       fill = "Total Sales") +
  theme_minimal()

