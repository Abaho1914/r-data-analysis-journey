# Day 06: Lists in R
# 1. Basic list creation

my_list <- list(
  name ="Abaho",
  age =25,
  scores = c(12,14,15),
  donation = TRUE
)
# Access elements
my_list$name  # using $
my_list[["age"]] # Using [[]]
my_list[3] # Still a list
my_list[[3]] # Actual vector of scores

# 3. Nested List
nested <- list(
  student =list(
    name = "Jane",
    year = 5,
    willing = "Yes"
  ),
  knowledge =list(
    q1  =TRUE,
    q2 = FALSE
  )
)

# Access nested elements
nested$student$name
nested[[1]]$willing

# 4. Lists of data frames
df1 <- data.frame(ID =1:3,Score = c(12,13,15))
df2 <- data.frame(ID =4:6,Score = c(14,12,11))

df_list <- list(df1,df2)

# Combine all into one data frame
do.call(rbind,df_list)

# 5. Named list summary
names(my_list)
length(my_list)
str(my_list)
