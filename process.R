source("Deck.R")

process_dealer <- function(dealer, idx){
  cat("process_dealer\n")
  show_cards(dealer)
  
  value_d <- get_val(dealer)
  if(value_d == 22){
    dealer[[1]]@value <- 1
  }
  
  d_num <- 2
  # add card if appropriate
  repeat{
    if(value_d < 17){
      d_num <- d_num +1
      dealer[d_num] <- next_card(idx)
      idx <- idx + 1
      
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


process_player <- function(p,num, idx, dlr_crd){
  num_cards <- 2
  if(get_val(p) == 22){
    p[[1]]@value <- 1
  }

  repeat{
    value_p <- get_val(p)
    cat("\nDealer showing:\n")
    cat(dlr_crd@name,"of",dlr_crd@suit,"\n\n")
    cat("Player",num, ":\n")
    show_cards(p)
    
    cat("Player",num,":",value_p,"\n\n")
    if(value_p == 21) break
    
    hit_card <- get_card(next_card(idx))
    if(is.null(hit_card)) break
    
    idx <- idx + 1
    num_cards <- num_cards + 1
    p[num_cards] <- hit_card
    cat(p[[num_cards]]@name,"of",p[[num_cards]]@suit,"\n")
    
    value_p <- get_val(p)
    if(value_p == 21) break
    
    if(value_p > 21){
      reducable <- can_reduce(p)  
      if(reducable == FALSE) {
        cat("Player",num,"Busted\n\n")
        break
      }  
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
