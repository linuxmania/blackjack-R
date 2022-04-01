source("Deck.R")
source("util.R")
source("process.R")

shuffled_deck <- sample(1:52, 52)

index <- 1

d <- vector()

num_players <- 2

players <- vector(mode='list', length=num_players)

for(i in 1:num_players) {
  players[[i]] <- vector()
}

for(i in 1:num_players) {
  players[[i]][1] <- deck[shuffled_deck[index]]
  index <- index + 1
}

d[1] = deck[shuffled_deck[index]]
index <- index + 1

for(i in 1:num_players) {
  players[[i]][2] <- deck[shuffled_deck[index]]
  index <- index + 1
}

d[2] <- deck[shuffled_deck[index]]

for(i in 1:num_players) {
  players[[i]] <- process_player(players[[i]],i, index, d, deck, shuffled_deck)
  index <- (index + length(players[[i]]) -2)
  cat("index", index, "\n")
  cat("\n")
}

d <- process_dealer(d, index, deck, shuffled_deck)

value_d <- get_val(d)

player_values <- vector()
for(i in 1:num_players) {
  player_values[i] <- get_val(players[[i]])
}

cat("\n\nResults:\n\n")

cat("\n\nDealer:", value_d, "\n\n")
show_cards(d)

for(i in 1:num_players) {
  cat("\n\nPlayer",i, ":",player_values[i], "\n\n")
  show_cards(players[[i]])
}

for(i in 1:num_players) {
  p_results(i,player_values[i],value_d)
}
