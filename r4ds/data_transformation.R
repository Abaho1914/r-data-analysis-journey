# Load required libraries
library(tidyverse)     # For data manipulation and visualization
library(nycflights13)  # Dataset used for this practice

# View the structure of the flights data
str(flights)

# Open the flights dataset in a spreadsheet-like viewer
View(flights)

# Filter for flights with destination "IAH" and calculate average arrival delay per day
flights %>%
  filter(dest == "IAH") %>%          # Keep only rows where destination is IAH
  group_by(year, month, day) %>%     # Group by date
  summarise(
    arr_delay = mean(arr_delay, na.rm = TRUE)  # Calculate average arrival delay, ignoring NAs
  )

# --- ROW OPERATIONS ---

# Filter flights that departed more than 2 hours after midnight (i.e., dep_time > 120 mins)
more_than_2hrs_late <- flights %>% filter(
  dep_time > 120
)
print(more_than_2hrs_late)

# Filter flights that departed on January 1st
Jan_1 <- flights %>% filter(
  month == 1 & day == 1
)
print(Jan_1)

# Filter flights that departed in either January or February (two approaches shown)
flights %>% filter(
  month == 1 | month == 2
)

# Same result using `%in%`
flights %>% filter(month %in% c(1, 2))

# --- SORTING / ARRANGING ---

# Arrange flights chronologically by year, month, day, and departure time
flights %>% arrange(year, month, day, dep_time)

# Arrange flights in descending order of month
flights %>% arrange(desc(month))

# Get distinct origin-destination pairs, keeping the first occurrence of each
flights %>% distinct(origin, dest, .keep_all = TRUE)

# --- COLUMN OPERATIONS ---

# Add new columns: 'gain' (departure delay - arrival delay) and 'speed' (in mph)
flights |> 
  mutate(
    gain = dep_delay - arr_delay,
    speed = distance / air_time * 60   # Convert speed to miles per hour
  )

# Add same columns but place them at the beginning of the dataset
flights |> 
  mutate(
    gain = dep_delay - arr_delay,
    speed = distance / air_time * 60,
    .before = 1                         # Add new columns before column 1
  )

# --- SELECTING COLUMNS ---

# Select specific columns by name
flights |> 
  select(year, month, day)

# Select a range of columns
flights |> 
  select(year:day)

# Exclude a range of columns
flights |> 
  select(!year:day)

# Select all character-type columns
flights |> 
  select(where(is.character))

# Rename a column: 'tailnum' becomes 'tail_num'
flights |> 
  rename(tail_num = tailnum)

# --- GROUPING AND SUMMARIZING ---

# Group by month (no summarization yet)
flights |> 
  group_by(month)

# Calculate average departure delay by month (with missing values included)
flights |> 
  group_by(month) |> 
  summarize(
    avg_delay = mean(dep_delay)
  )

# Same as above, but now removing missing values
flights |> 
  group_by(month) |> 
  summarize(
    avg_delay = mean(dep_delay, na.rm = TRUE)
  )

# Also count number of flights per month
flights |> 
  group_by(month) |> 
  summarize(
    avg_delay = mean(dep_delay, na.rm = TRUE), 
    n = n()     # Count of flights
  )

# Create grouped data by date (without summarizing)
daily <- flights |>  
  group_by(year, month, day)
daily

# Remove the grouping structure from the previous object
daily |> 
  ungroup()
