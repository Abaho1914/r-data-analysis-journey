# Load libraries
library(tidyverse)

# Simulate sample data
students <- tibble(
  Year = c("First", "Second", "Third", "Fourth", "Fifth"),
  Count = c(80, 95, 75, 60, 90)
)

# --- Bar Charts ---

# 1. geom_bar() for count data (stat = "count" by default)
ggplot(students, aes(x = Year)) +
  geom_bar(stat = "identity", aes(y = Count), fill = "steelblue") +
  labs(title = "Bar Chart using geom_bar()", x = "Year", y = "Student Count")

# 2. geom_col(): better for pre-aggregated data
ggplot(students, aes(x = Year, y = Count)) +
  geom_col(fill = "tomato") +
  labs(title = "Bar Chart using geom_col()", x = "Year", y = "Student Count")

# --- Line Charts ---

# Add an imaginary trend over years (e.g., score improvement)
students <- students %>%
  mutate(AverageScore = c(65, 68, 72, 75, 80))

ggplot(students, aes(x = Year, y = AverageScore, group = 1)) +
  geom_line(color = "darkgreen", linewidth = 1.5) +
  geom_point(size = 3) +
  labs(title = "Line Chart of Average Scores", x = "Year", y = "Average Score")

# Line chart with multiple groups
students_gender <- tibble(
  Year = rep(c("First", "Second", "Third", "Fourth", "Fifth"), each = 2),
  Gender = rep(c("Male", "Female"), times = 5),
  Score = c(65, 66, 68, 69, 71, 73, 74, 76, 78, 82)
)

ggplot(students_gender, aes(x = Year, y = Score, color = Gender, group = Gender)) +
  geom_line(linewidth = 1.2) +
  geom_point(size = 3) +
  labs(title = "Average Score by Gender per Year", x = "Year", y = "Score")
