print("Vikasini M 23BAD127")
library(ggplot2)
library(dplyr)
library(tidyr)
student_data <- read.csv("1.student_performance.csv")
student_data <- student_data %>%
  mutate(Average_Marks = (Internal_Test1 + Internal_Test2 + Assignment_Marks) / 3)
#BAR CHART
subject_avg <- student_data %>%
  group_by(Subject) %>%
  summarise(Avg_Marks = mean(Average_Marks))

ggplot(subject_avg, aes(x = Subject, y = Avg_Marks, fill = Subject)) +
  geom_bar(stat = "identity") +
  labs(title = "Subject-wise Average Internal Marks",
       x = "Subject",
       y = "Average Marks",
       fill = "Subjects") +
  theme_minimal()
#LINE CHART
test_avg <- student_data %>%
  summarise(Test1 = mean(Internal_Test1),
            Test2 = mean(Internal_Test2)) %>%
  pivot_longer(cols = everything(),
               names_to = "Test",
               values_to = "Average_Marks")

ggplot(test_avg, aes(x = Test, y = Average_Marks, group = 1)) +
  geom_line(color = "blue", size = 1) +
  geom_point(size = 3) +
  labs(title = "Average Performance Trend Across Tests",
       x = "Internal Tests",
       y = "Average Marks") +
  theme_minimal()

#PIE CHART
grade_dist <- student_data %>%
  group_by(Final_Grade) %>%
  summarise(Count = n())

ggplot(grade_dist, aes(x = "", y = Count, fill = Final_Grade)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(title = "Grade Distribution of Students",
       fill = "Grades") +
  theme_void()



