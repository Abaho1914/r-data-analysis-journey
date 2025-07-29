
# data_tidying.R
# Billboard data tidying and visualization from the R4DS dataset

library(tidyverse)

# Load and pivot the dataset
billboard_long <- billboard %>%
  pivot_longer(
    cols = starts_with("wk"),
    names_to = "week",
    names_prefix = "wk",
    values_to = "rank",
    values_drop_na = TRUE
  ) %>%
  mutate(week = as.integer(week))

# Plot 1: Top 5 tracks based on peak rank
top_tracks <- billboard_long %>%
  group_by(track) %>%
  summarise(best_rank = min(rank, na.rm = TRUE)) %>%
  arrange(best_rank) %>%
  slice(1:5) %>%
  pull(track)

billboard_filtered <- billboard_long %>%
  filter(track %in% top_tracks)

ggplot(billboard_filtered, aes(x = week, y = rank, group = track, color = track)) +
  geom_line(size = 1.2) +
  scale_y_reverse() +
  labs(
    title = "Top 5 Billboard Songs Weekly Performance",
    x = "Week",
    y = "Rank"
  ) +
  theme_minimal()

# Plot 2: Top track per week
top_track_per_week <- billboard_long %>%
  group_by(week) %>%
  slice_min(rank, n = 1, with_ties = FALSE) %>%
  ungroup()

ggplot(top_track_per_week, aes(x = week, y = rank, label = track)) +
  geom_line(aes(group = 1), color = "steelblue", size = 1.2) +
  geom_point(color = "red", size = 2) +
  geom_text(aes(y = rank - 3), size = 3, angle = 45, hjust = 0) +
  scale_y_reverse() +
  labs(
    title = "Top Billboard Track per Week",
    x = "Week Number",
    y = "Chart Rank (1 = Best)"
  ) +
  theme_minimal()


df <- tribble(
  ~Id,~bp1,~bp2,
  "A",120,100,
  "B",150,115,
  "C",120,125
)

df_long <- df %>% pivot_longer(
  cols = starts_with("bp"),
  names_to = "measurement",
  values_to = "value"
)

df_long


who_long <-who %>%
  pivot_longer(
    cols = starts_with("new"),         # All the measurement columns
    names_to = "key",                  # Puts column names into a new column called `key`
    values_to = "cases",               # Values go into a column called `cases`
    values_drop_na = TRUE              # Drop missing values
  )

who_tidy <- who_long %>%
  separate(key, into = c("new", "type", "sexage"), sep = "_") %>%
  select(-new) %>%  # Drop the constant "new"
  mutate(
    sex = substr(sexage, 1, 1),
    age = substr(sexage, 2, nchar(sexage))
  ) %>%
  select(-sexage)
