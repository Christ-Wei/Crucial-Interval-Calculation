find_optimal_interval <- function(data, interval_length = 100) {
  # sort the data 
  sorted_data <- sort(data)
  max_count <- 0
  optimal_start <- NA
  
  # Start from every possible point
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

# Read your data
file_path <- "E:/Crucial Interval Calculation/PC1_PC2_per_frame.csv"
data <- read.csv(file_path)

# The range of PC1 and PC2 from your calculation 
pc1_min <- -11.7736
pc1_max <- -9.6529
pc2_min <- -25.4736
pc2_max <- -23.4133

# Filter data that are within the specified minima range for PC1 and PC2
filtered_data <- data[data$PC1 >= pc1_min & data$PC1 <= pc1_max & data$PC2 >= pc2_min & data$PC2 <= pc2_max, ]

# Extract the filtered Frame column data
frame_data <- filtered_data$Frame

# Calculate the optimal interval
optimal_interval <- find_optimal_interval(frame_data)
optimal_interval

print('Please Cite: [1] Cc.Wei, C.H.Heh & S.P.Chin; Exploring the Impact of LRRK2 WD40 G2294R Mutation on Conformation and Dimerisation Dynamics: Insights from Molecular Dynamics Simulation.')