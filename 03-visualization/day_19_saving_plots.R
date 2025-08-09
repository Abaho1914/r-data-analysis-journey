# Load libraries
library(tidyverse)

# Example dataset
students <- tibble(
  Name = c("Alice", "Bob", "Charlie", "Diana", "Evan", "Fiona"),
  Year = c("Year 1", "Year 2", "Year 1", "Year 3", "Year 2", "Year 3"),
  Score = c(85, 92, 78, 88, 95, 73)
)

# Create a sample plot
score_plot <- ggplot(students, aes(x = Year, y = Score, fill = Year)) +
  geom_boxplot() +
  labs(title = "Student Scores by Year",
       x = "Year",
       y = "Score") +
  theme_minimal()

# Show plot
print(score_plot)

# Save the plot as PNG
ggsave("outputs/student_scores_boxplot.png", plot = score_plot, width = 6, height = 4)

# Save the plot as PDF
ggsave("outputs/student_scores_boxplot.pdf", plot = score_plot, width = 6, height = 4)

# Save with higher resolution (for publication quality)
ggsave("outputs/student_scores_boxplot_highres.png", plot = score_plot, width = 6, height = 4, dpi = 300)

# Export in JPEG format
ggsave("outputs/student_scores_boxplot.jpg", plot = score_plot, width = 6, height = 4)

# Optional: Save using cairo for better text rendering
ggsave("outputs/student_scores_boxplot_cairo.png", plot = score_plot, device = "cairo", width = 6, height = 4)
