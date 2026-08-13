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
