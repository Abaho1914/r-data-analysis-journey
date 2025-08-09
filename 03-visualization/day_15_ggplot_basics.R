library(tidyverse)

# 
data("mtcars")
head(mtcars)

#Basic Scatterplot with ggplot()
ggplot(data = mtcars, aes(x = wt, y = mpg)) +
  geom_point()

#Adding more layers
ggplot(data = mtcars, aes(x = wt, y = mpg)) +
  geom_point(color = "blue") +
  labs(
    title = "MPG vs Weight of Car",
    x = "Weight (1000 lbs)",
    y = "Miles per Gallon"
  )

#Change Aesthetic Mappings
ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point(size = 3) +
  labs(color = "Cylinders")



