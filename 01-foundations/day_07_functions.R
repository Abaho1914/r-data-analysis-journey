# Day 07: Functions in R

# 1. Define a simple function
add_two <- function(x) {
  x + 2
}

add_two(5)     # 7
add_two(c(1, 2, 3))  # 3 4 5

# 2. Function with multiple arguments
calculate_bmi <- function(weight, height) {
  bmi <- weight / (height ^ 2)
  return(round(bmi, 1))
}

calculate_bmi(70, 1.75)

# 3. Function with default arguments
greet <- function(name = "Doctor") {
  paste("Hello,", name)
}

greet()
greet("Abaho")

# 4. Function with conditional logic
assess_knowledge <- function(score) {
  if (score >= 12) {
    return("Adequate knowledge")
  } else {
    return("Inadequate knowledge")
  }
}

assess_knowledge(14)
assess_knowledge(10)

# 5. Vectorized function use with sapply
scores <- c(10, 12, 14, 9)
sapply(scores, assess_knowledge)

# 6. Returning multiple outputs as a list
student_summary <- function(name, score, willing) {
  level <- assess_knowledge(score)
  list(
    name = name,
    score = score,
    knowledge_level = level,
    willing = willing
  )
}

student_summary("Alice", 13, TRUE)
