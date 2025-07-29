# R Learning Journey – Progress Tracker

This file tracks my daily R data analysis practice, organized by weeks and topics.

------------------------------------------------------------------------

## **Week 1 – Foundations of R**

### Day 01 – R Basics & Setup

-   Installed R and RStudio.
-   Learned about R scripts, projects, and the working directory.
-   Practiced basic arithmetic operations, variable assignment (`<-`), and `print()`.
-   Created my first R script: `day_01_basics.R`.

### Day 02 – R Objects & Data Types

-   Explored common data types: numeric, character, logical, factor.
-   Used `class()`, `typeof()`, `as.numeric()`, `as.character()` for type checking/conversion.
-   Learned about vectors using `c()`.
-   Created practice vectors and checked their structure.

### Day 03 – Working with Vectors

-   Practiced indexing (`[ ]`), slicing, and negative indexing.
-   Performed vectorized arithmetic.
-   Learned logical indexing (e.g., `nums[nums > 5]`).
-   Used functions like `length()`, `sum()`, `mean()`.

### Day 04 – Vector Functions & Operations

-   Used `which()`, `any()`, and `all()` for logical checks.
-   Practiced set operations (`union()`, `intersect()`, `setdiff()`).
-   Reviewed recycling rules in vector arithmetic.

### Day 05 – Factors & Categorical Data

-   Created factors with `factor()`.
-   Learned about levels and ordering (e.g., `ordered()`).
-   Converted factors to numeric/character when needed.

### Day 06 – Lists & Nested Data

-   Created lists with mixed data types.
-   Accessed elements using `$`, `[[ ]]`, `[ ]`.
-   Practiced nested lists and combined data frames in a list with `do.call(rbind, ...)`.
-   Used `str()` to explore structure.

### Day 07 – Writing Functions

-   Defined custom functions with `function()`.
-   Used arguments, defaults, and `return()`.
-   Applied conditional logic in functions (`if/else`).
-   Practiced `sapply()` and `mapply()` for applying functions to vectors.

------------------------------------------------------------------------

## **Week 2 – Data Wrangling & Visualization**

### Day 08 – Data Import & Export

-   Imported data from CSV using `read_csv()` and Excel using `read_excel()`.
-   Imported SPSS `.sav` files with `read_sav()`.
-   Exported data to CSV, Excel, and RDS formats.
-   Organized project with `data/` and `outputs/` folders.

### Day 09 – Data Wrangling with `dplyr`

-   Practiced the main `dplyr` verbs: `filter()`, `select()`, `arrange()`, `mutate()`, `summarise()`, and `group_by()`.
-   Combined verbs in pipelines (`%>%`).
-   Created new variables and sorted data.

### Day 10 – Wrangling + Visualization with `ggplot2`

-   Used `ggplot2` to create bar charts, boxplots, and scatterplots.
-   Compared `geom_bar()` (automatic counts) vs. `geom_col()` (pre-computed counts).
-   Customized plots with titles, labels, and themes.
-   Saved plots with `ggsave()`.

### Day 11 – Joins & Merging Datasets

-   Practiced dataset joins: `left_join()`, `inner_join()`, `right_join()`, `full_join()`.
-   Learned filtering joins: `semi_join()` and `anti_join()`.
-   Combined `students.csv` with lab results and blood type datasets.

### Day 12 – Advanced dplyr

-   Learned `case_when()` for conditional categorization.
-   Applied `across()` to transform multiple columns at once.
-   Used `rowwise()` for row-level operations (e.g., averaging multiple scores).
-   Summarised performance groups with counts and averages.


### Day 13 – Data Tidying with tidyr
- Learned `pivot_longer()` to convert wide data to long format.
- Used `pivot_wider()` to revert long data to wide format.
- Practiced handling missing values with `replace_na()`.
- Calculated summary statistics from long-format data.


### Day 14 – Real-World Wrangling Challenge
- Combined `students.csv` and `exams_wide.csv` for integrated analysis.
- Reshaped data with `pivot_longer()`, summarized with `dplyr`, and categorized performance with `case_when()`.
- Created bar charts for average scores by year and performance distribution.
- Exported final datasets and plots.


------------------------------------------------------------------------

\
\
