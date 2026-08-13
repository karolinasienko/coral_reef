# Defining the randomness
set.seed(32)

# Creating a 5x5 matrix of 0's
reef_init <- matrix(0, nrow = 5, ncol = 5)

# Randomly samples 8 values from the matrix
random <- sample(1:25, size=8, replace=FALSE)


# SOLUTION

# Rows
1:25 %% 5
(1:25 - 1) %% 5
(1:25 - 1) %% 5 + 1

# Columns
1:25 %/% 5
(1:25 - 1) %/% 5 + 1

cell_label <- 6
cell_row <- (6-1) %/% 5+1
cell_column <- (6-1) %% 5+1
reef_init[cell_row, cell_column] <- 1
