#Load library
library(tidyverse)

#Load data

students <- read_csv("data/students.csv")

str(students)


#Bar chart of students by year
students %>%
  count(Year) %>%
  ggplot(aes(x = Year, y = n)) +
  geom_col(fill = "steelblue") +
  labs(title = "Number of Students per Year", y = "Count", x = "Year")

# Save the plot
ggsave("students_per_year.png", width = 8, height = 5, dpi = 300)

# 2. Add Knowledge Level & Plot by Category
str(students)

students  <- students %>% mutate(
  Knowledge_level = ifelse (Score<=12,"Poor","Good"))


students %>% ggplot(aes(x= Knowledge_level,fill = Willing_to_Donate))+
  geom_bar(position = "dodge")+
  labs(title = "Knowledge Level vs Willingness to Donate",
       x = "Knowledge Level", y = "Count", fill = "Willing to Donate")


ggplot(students, aes(x = Year, y = Score, color = Willing_to_Donate)) +
  geom_jitter(width = 0.2, height = 0) +
  labs(title = "Scores by Year and Willingness",
       y = "Knowledge Score", x = "Year") +
  theme_minimal()

ggplot(students, aes(x = Knowledge_level, y = Score, fill = Knowledge_Level)) +
  geom_boxplot() +
  labs(title = "Score Distribution by Knowledge Level")





students$Knowledge_level






