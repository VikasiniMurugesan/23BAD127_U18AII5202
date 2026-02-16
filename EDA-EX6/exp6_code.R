
print("Vikasini M,23BAD127")

library(ggplot2)
library(dplyr)
library(tidyr)

retail_data <- read.csv("6.retail_business.csv")

str(retail_data)

retail_data <- retail_data %>%
  mutate(
    Region = as.factor(Region),
    Customer_Segment = as.factor(Customer_Segment)
  )


parallel_data <- retail_data %>%
  select(Order_ID, Sales, Profit, Customer_Segment) %>%
  pivot_longer(
    cols = c(Sales, Profit),
    names_to = "Variable",
    values_to = "Value"
  )

ggplot(parallel_data,
       aes(
         x = Variable,
         y = Value,
         group = interaction(Order_ID, Customer_Segment),
         color = Customer_Segment
       )) +
  geom_line(alpha = 0.6) +
  geom_point(size = 2) +
  labs(
    title = "Parallel Coordinate Plot of Sales and Profit",
    x = "Variables",
    y = "Values",
    color = "Customer Segment"
  ) +
  theme_minimal()

ggplot(retail_data, aes(
  x = Sales,
  y = Profit,
  size = Sales,
  color = Customer_Segment
)) +
  geom_point(alpha = 0.7) +
  scale_size_continuous(range = c(3, 10)) +
  labs(
    title = "Bubble Chart of Sales vs Profit",
    x = "Sales",
    y = "Profit",
    size = "Sales",
    color = "Customer Segment"
  ) +
  theme_minimal()


ggplot(retail_data, aes(
  x = Sales,
  y = Profit,
  color = Customer_Segment
)) +
  geom_point(size = 3, alpha = 0.7) +
  facet_wrap(~ Region) +
  labs(
    title = "Trellis Display of Sales vs Profit by Region",
    x = "Sales",
    y = "Profit",
    color = "Customer Segment"
  ) +
  theme_minimal()