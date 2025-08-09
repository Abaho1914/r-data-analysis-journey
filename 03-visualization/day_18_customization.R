# Load libraries
library(tidyverse)

# Sample dataset
data("mtcars")
mtcars <- mtcars %>%
  rownames_to_column("car") %>%
  mutate(cyl = factor(cyl))

# --- Basic Plot ---
p <- ggplot(mtcars, aes(x = wt, y = mpg, color = cyl)) +
  geom_point(size = 3) +
  labs(
    title = "Miles Per Gallon vs Weight",
    subtitle = "Grouped by Number of Cylinders",
    x = "Weight (1000 lbs)",
    y = "Miles per Gallon",
    caption = "Source: mtcars dataset",
    color = "Cylinders"
  )

# Print basic plot
p

# --- Theme Customizations ---
p + theme_minimal()
p + theme_classic()
p + theme_light()
p + theme_bw()

# Custom theme (with font size and angle)
p + theme_minimal() +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    axis.text.x = element_text(angle = 45, hjust = 1),
    legend.position = "bottom"
  )

# --- Color Customization ---

# Manual color scale
p + scale_color_manual(values = c("4" = "blue", "6" = "green", "8" = "red"))

# Use viridis color palette (colorblind-friendly)
library(viridis)
p + scale_color_viridis_d()

# --- Faceting ---

# Facet by number of gears (rows) and cylinders (cols)
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  facet_grid(gear ~ cyl) +
  labs(title = "Faceted Plot: MPG vs Weight by Gear and Cyl")

# Facet wrap
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  facet_wrap(~ cyl) +
  labs(title = "Facet Wrap: MPG vs Weight by Cylinders") +
  theme_minimal()
