# Load tidyverse
library(tidyverse)

# --- Scatter Plot ---

# Simulated dataset: Age vs Exam Score by Gender
set.seed(123)
students <- tibble(
  Age = sample(18:30, 100, replace = TRUE),
  Score = round(rnorm(100, mean = 70, sd = 10), 1),
  Gender = sample(c("Male", "Female"), 100, replace = TRUE)
)

# Basic scatter plot
ggplot(students, aes(x = Age, y = Score)) +
  geom_point() +
  labs(title = "Scatter Plot of Age vs Exam Score", x = "Age", y = "Score")

# Scatter plot with color by Gender
ggplot(students, aes(x = Age, y = Score, color = Gender)) +
  geom_point(alpha = 0.7, size = 3) +
  labs(title = "Scatter Plot: Age vs Score by Gender", x = "Age", y = "Score") +
  theme_minimal()

# Add linear trend line (regression)
ggplot(students, aes(x = Age, y = Score, color = Gender)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", se = TRUE) +
  labs(title = "Age vs Score with Regression Line", x = "Age", y = "Score")

# --- Box Plot ---

# Boxplot of Score by Gender
ggplot(students, aes(x = Gender, y = Score, fill = Gender)) +
  geom_boxplot() +
  labs(title = "Boxplot of Scores by Gender", x = "Gender", y = "Score") +
  theme_minimal()

# Add jittered points to show distribution
ggplot(students, aes(x = Gender, y = Score, fill = Gender)) +
  geom_boxplot(outlier.shape = NA, alpha = 0.6) +
  geom_jitter(color = "black", width = 0.2, alpha = 0.4) +
  labs(title = "Boxplot with Jittered Points", x = "Gender", y = "Score")
