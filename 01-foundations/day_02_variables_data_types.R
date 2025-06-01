# day 02: Variables & Data Types in R
# 1. Assign values to variables
a <- 10
b <- "R is fun"
c <- TRUE
d <- 3.14

# 2. check for their types
class(a)
class(b)
class(c)
class(d)

# 3. Type coercion
mixed_vector <- c(1,"two",FALSE)
print(mixed_vector)
class(mixed_vector)

# 4.Explicit coercion
as.numeric("5")
as.character(123)
as.logical(0)
as.logical(1)
as.logical(2)
as.logical(-1)

# 5.Type testing functions
is.numeric(a)
is.character(b)
is.logical(c)
is.integer(a)

# 6 . Special Values
x <- NA # missing value
y <- NULL # Empty object
z <- NaN #Not a number e.g. 0/0
w <- Inf # Infinity (e.g. 1/0)

#print all
print(c(x,y,z,w))

# 7 .Using typeof() for internal types
typeof(a)
typeof(b)
typeof(c)
typeof(d)
typeof(x)
typeof(y)
typeof(w)
typeof(z)
