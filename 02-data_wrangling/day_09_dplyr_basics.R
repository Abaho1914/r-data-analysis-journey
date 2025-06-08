libary(dplyr)

# Load dataset
students <- readr::read_csv("data/students.csv")

# keep only those with score >=12
students %>% filter(Score>=12)

# Select specific columns
students %>% select(Name,Score)

students %>% arrange(desc(Score))
# Add a new column: Knowledge Level

students %>% 
  mutate(Knowledge_Level = ifelse(Score >=12,"Adequate","Inadequate"))

students %>% 
  group_by(Year) %>% 
  summarise(Average_Score =mean(Score))
  
students %>%
  filter(Willing_to_Donate == TRUE) %>%
  mutate(Knowledge_Level = ifelse(Score >= 12, "Adequate", "Inadequate")) %>%
  arrange(desc(Score)) %>%
  select(Name, Year, Score, Knowledge_Level)


