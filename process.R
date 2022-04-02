process_dealer <- function(dealer, idx, dck, shffld_dck){
  cat("process_dealer\n")
  show_cards(dealer)
  
  value_d <- get_val(dealer)
  
  d_num <- 2
  # add card if appropriate
  repeat{
    if(value_d < 17){
      idx <- idx + 1
      d_num <- d_num +1
      dealer[d_num] <- dck[shffld_dck[idx]]
      
      value_d <- get_val(dealer)
      
      cat(dealer[[d_num]]@name,"of",dealer[[d_num]]@suit,"\n")
      cat("Dealer :",value_d,"\n")
    } else if(value_d > 21){
      # reduce if we have an ace
      reduced <- FALSE
      for(i in 1:length(dealer)) {
        if(dealer[[i]]@value == 11){
          dealer[[i]]@value <- 1
          reduced <- TRUE
          value_d <- value_d -10
          break
        }
      }
      if(reduced == FALSE) break
    } else break
  }
  return(dealer)
}


process_player <- function(p,num, idx, dlr, dck, shffld_dck){
  cat("process_player\n")
  
  num_cards <- 2
  
  repeat{
    value_p <- get_val(p)
    cat("Dealer showing:\n")
    cat(dlr[[1]]@name,"of",dlr[[1]]@suit,"\n")
    cat("Player",num, ":\n")
    show_cards(p)
    
    cat("Player",num,":",value_p,"\n")
    if(value_p == 21) break
    
    next_card <- get_card(dck[shffld_dck[idx+1]])
    if(is.null(next_card)) break
    
    idx <- idx + 1
    num_cards <- num_cards +1
    p[num_cards] <- next_card
    cat(p[[num_cards]]@name,"of",p[[num_cards]]@suit,"\n")
    
    value_p <- get_val(p)
    if(value_p == 21) break
    
    if(value_p > 21){
      reducable <- can_reduce(p)  
      if(reducable == FALSE) break
      for(i in 1:length(p)) {
        if(p[[i]]@value == 11){
          p[[i]]@value <- 1
          break
        }
      }  
    }
  }
  return(p)
}
