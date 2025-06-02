# Day 03: Vectors in R
# 1. creating vectors

num_vec <- c(1,2,3,4,5,6)
char_vec <- c("character","banana","cherry")
logical_vec <- c(TRUE,FALSE,TRUE)

# 2. check type and structure
typeof(num_vec)
length(char_vec)
class(logical_vec)

# 3. Indexing vectors
num_vec[1] # first element
char_vec[2:3]  # Elements 2 to 3
logical_vec[-2] # All except second

# 4. Modifying vectors
num_vec[2] <-10
char_vec[1] <- "mango"
char_vec[0]
#5. Vector arithmetic (element wise)
a <- c(1,2,3)
b <- c(10,20,30)

a+b

# 6 Recycling rule

c <- c(1,2)
d <- c(10,20,30,40)

c+d

# 7. Logical vectors
nums <- c(3,6,9,12)
nums >5

nums[nums >5] # filtered

# 8. Named vectors
heights <- c(Alice =160,Bob =172, Carol = 168)
names(heights)
heights["Bob"]

# 9. Using 'which()' and 'any()'
which(nums >5)
any(nums>10)
