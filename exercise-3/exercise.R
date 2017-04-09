# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c("red", "yellow", "orange", "green", "purple", "blue")

# Use the `sample` function to select a single marble
selectedMarble <- sample(marbles, 1)

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
MarbleGame <- function(guess){
  return(guess == selectedMarble)
}

# Play the marble game!
MarbleGame("blue")

# Bonus: Play the marble game until you win, keeping track of how many tries you take
answer <- MarbleGame("blue")
if(answer == FALSE){
  numberOfTries <- numberOfTries + 1
}else{
  numberOfTries <- 0
}
## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability
noOfTries <- 0
i <- noOfTries
for(i in c(1:1000)){
  check = MarbleGame("blue")
  if(check)
    i <- i + 1
  else
    break
}
average <- noOfTries / 1000

