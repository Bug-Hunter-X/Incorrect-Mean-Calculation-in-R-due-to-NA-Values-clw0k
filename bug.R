```R
# This function attempts to calculate the mean of a vector, but it has a subtle bug.
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA)  # Handle empty vector
  }
  sum(x) / length(x)
}

# Example usage:
my_vector <- c(1, 2, 3, 4, 5)
mean_result <- calculate_mean(my_vector)
print(paste("Mean:", mean_result))

my_empty_vector <- numeric(0)
mean_empty <- calculate_mean(my_empty_vector)
print(paste("Mean of empty vector:", mean_empty))

#This will throw a warning and give incorrect result for NA values
my_na_vector <- c(1, 2, NA, 4, 5)
mean_na <- calculate_mean(my_na_vector)
print(paste("Mean of vector with NA:", mean_na))
```