# Define a function to find the optimal interval
find_optimal_interval <- function(data, interval_length = 100) {
  # Ensure the data is sorted
  sorted_data <- sort(data)

  # Initialise
  max_count <- 0
  optimal_start <- NA

  # Iterate over each possible starting point
  for (start in sorted_data) {
    end <- start + interval_length
    count <- sum(sorted_data >= start & sorted_data <= end)
    if (count > max_count) {
      max_count <- count
      optimal_start <- start
    }
  }

  return(c(optimal_start, optimal_start + interval_length))
}

# Read data
file_path <- "/PC1_PC2_per_frame.csv"
data <- read.csv(file_path)$Frame

# Calculate the optimal interval
optimal_interval <- find_optimal_interval(data)
optimal_interval
