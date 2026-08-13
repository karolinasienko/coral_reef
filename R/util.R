# Write a function to encapsulate the logic for putting 8 random corals on the initialized reef.
# Rather than hard-coding the number at 8, make the number of corals an input.

# Step 1: Write out the expression(s) for the logic
# Step 2: Determine if the function needs any inputs
# Step 3: Write the function call
# Step 4: Put the expression(s) in a function definition

set.seed(123)

initialize_reef <- function(num_corals) {
  reef <- matrix(0, nrow = 5, ncol = 5)   # initializes a 5x5 matrix of zeroes

  random_coral <- sample(1:25, size = num_corals)  # produces n number of random coordinates

  for (rc in random_coral) {
    rc_row <- (rc - 1) %/% 5 + 1   # finds the row number of the random coordinate
    rc_col <- (rc - 1) %% 5 + 1    # finds the col number of the random coordinate
    reef[rc_row, rc_col] <- 1      # places a 1 in the random coordinate
  }

  return(reef)
}

#initialize_reef(8)



# Need to create a function for coral growth

# 2d8 roll
growth_roll <- function() {
  roll1d8 <- sample(1:8, size = 1, replace = TRUE)
  return(roll1d8)
}

# growth function
growth <- function(reef, growth_roll, row, col) {
  growth_row_offset <- c(-1, -1, -1, 0, 1, 1, 1, 0)
  growth_col_offset <- c(-1, 0, 1, 1, 1, 0, -1, -1)

  growth_row <- row + growth_row_offset[growth_roll]
  growth_col <- col + growth_col_offset[growth_roll]

  reef[growth_row, growth_col] <- 1

  return(reef)
}

# coral_fate <- function(roll, mort_thr, grow_thr) {
#   if (roll <= mort_thr) {
#     fate <- "death :("
#   }
#   else if (roll >= grow_thr) {
#     fate <- "growth :)"
#   }
#   else {
#     fate <- "survival :|"
#   }
#   return(fate)
# }
