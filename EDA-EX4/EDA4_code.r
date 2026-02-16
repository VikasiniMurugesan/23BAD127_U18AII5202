print("Vikasini M 23BAD127")
library(ggplot2)
library(dplyr)

accidents <- read.csv("4.traffic_accidents.csv")

accidents$Accident_Type <- as.factor(accidents$Accident_Type)
accidents$Severity <- as.factor(accidents$Severity)

acc_summary <- accidents %>%
  group_by(Location, Severity, Accident_Type) %>%
  summarise(Frequency = n(), .groups = "drop")

str(acc_summary)

ggplot(acc_summary, aes(
  x = Location,
  y = Frequency,
  color = Severity,
  size = Frequency,
  shape = Accident_Type
)) +
  geom_point(alpha = 0.8) +
  
  scale_color_brewer(
    palette = "Reds",
    name = "Accident Severity"
  ) +
  
  scale_size_continuous(
    range = c(3, 10),
    name = "Accident Frequency"
  ) +
  
  labs(
    title = "Traffic Accident Analysis: High-Risk Locations",
    x = "Accident Location",
    y = "Number of Accidents"
  ) +
  
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold", size = 14),
    axis.text.x = element_text(angle = 45, hjust = 1),
    legend.position = "right"
  )


