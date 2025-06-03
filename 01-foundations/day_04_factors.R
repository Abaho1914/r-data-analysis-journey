# day 4: Factors (Categorical Data)

# 1. Create a factor
gender <- factor(c("Male","Female","Female","Male","Male"))
print(gender)
levels(gender)
table(gender)

# 2.Specify level order
education <- factor(
  c("Bachelor","Masters","PhD","Bachelor","PhD"),
  levels = c("Bachelor","Masters","PhD"),
  ordered = TRUE
)

print(education)
summary(education)

# 4. Change factor levels
gender <- factor(gender ,levels = c("Male","Female"),labels = c("M","F"))
print(gender)

#Handling invalid values
invalid <- factor(c("Yes","No","Maybe"),levels = c("Yes","No"))
table(invalid)