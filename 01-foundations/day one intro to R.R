# Day 01: Introduction to R and RStudio
# Goal: Understand R basics, object assignment, and simple functions

print("Hello, R world!")

#Arithmetic in R

print(2+2) # Addition
print(10-12) # Subtraction
print(3*4) #Division
print(2^3) #Exponentiation


# Assigning values to objects
x <- 5
y <- 3
z <- x + y
z

# View objects in your environment
ls()

# Remove an object
rm(y)

# Check again
ls()

# Using basic built-in functions
sqrt(16)        # Square root
log(100)        # Natural log
log10(100)      # Base 10 log
mean(c(2, 4, 6, 8))  # Mean of a numeric vector
sum(c(1, 2, 3, 4))   # Sum

# Create a vector and explore it
numbers <- c(1, 2, 3, 4, 5)
length(numbers)       # How many elements
class(numbers)        # What type of data

# Combine text
name <- "Abaho"
paste("Welcome to R,", name)

