print("Vikasini M 23BAD127")
library(ggplot2)
library(dplyr)

data <- read.csv("7.social_media_interactions.csv")

# 1. Raw Scatter Plot
ggplot(data, aes(x = Likes, y = Comments)) +
  geom_point(color = "black") +
  labs(
    title = "Raw Scatter Plot of Likes vs Comments",
    subtitle = "Visualization of Social Media Engagement",
    x = "Number of Likes",
    y = "Number of Comments"
  ) +
  theme_minimal()

# 2. Alpha Blending
ggplot(data, aes(x = Likes, y = Comments)) +
  geom_point(aes(color = Engagement_Score), alpha = 0.4) +
  labs(
    title = "Alpha Blending Technique",
    subtitle = "Transparency reduces over-plotting",
    x = "Number of Likes",
    y = "Number of Comments",
    color = "Engagement Score"
  ) +
  theme_minimal()

# 3. Jittering
ggplot(data, aes(x = Likes, y = Comments, color = Platform)) +
  geom_jitter(width = 50, height = 10, alpha = 0.6) +
  labs(
    title = "Jittering Technique",
    subtitle = "Small random noise added to reduce overlapping",
    x = "Number of Likes",
    y = "Number of Comments",
    color = "Platform"
  ) +
  theme_minimal()

# 4. Aggregation
aggregated_data <- data %>%
  group_by(Likes) %>%
  summarise(Avg_Comments = mean(Comments, na.rm = TRUE))

ggplot(aggregated_data, aes(x = Likes, y = Avg_Comments)) +
  geom_line(color = "darkgreen") +
  labs(
    title = "Aggregation Technique",
    subtitle = "Average Comments for Each Like Count",
    x = "Number of Likes",
    y = "Average Comments"
  ) +
  theme_minimal()

# 5. 2D Binning (Heatmap)
ggplot(data, aes(x = Likes, y = Comments)) +
  geom_bin2d() +
  labs(
    title = "2D Binning Technique",
    subtitle = "Density of Data Points",
    x = "Number of Likes",
    y = "Number of Comments",
    fill = "Count"
  ) +
  theme_minimal()
