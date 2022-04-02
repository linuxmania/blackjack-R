source("util.R")
source("process.R")

####### Set number of players to any number #######
num_players <- 3

####### Initialize #######
index <- 1
d <- vector()

players <- vector(mode='list', length=num_players)

for(i in 1:num_players) {
  players[[i]] <- vector()
}

###### deal #########
for(i in 1:num_players) {
  players[[i]][1] <- next_card(index)
  index <- index + 1
}

d[1] = next_card(index)
index <- index + 1

for(i in 1:num_players) {
  players[[i]][2] <- next_card(index)
  index <- index + 1
}

d[2] <- next_card(index)
index <- index + 1


####### process hands ############
for(i in 1:num_players) {
  players[[i]] <- process_player(players[[i]],i, index, d[[1]])
  index <- (index + length(players[[i]]) -2)
}

d <- process_dealer(d, index)


####### results #############
value_d <- get_val(d)

player_values <- vector()
for(i in 1:num_players) {
  player_values[i] <- get_val(players[[i]])
}

cat("\nResults:\n")

cat("\nDealer:", value_d, "\n\n")
show_cards(d)

for(i in 1:num_players) {
  cat("\nPlayer",i, ":",player_values[i], "\n\n")
  show_cards(players[[i]])
}

for(i in 1:num_players) {
  p_results(i,player_values[i],value_d)
}
