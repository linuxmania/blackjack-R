p_results <- function(num,p_val,d_val){
  cat("\n")
  if(p_val > 21){
    cat("Player",num,"busted\n")
  } else if (d_val > 21){
    cat("Player",num,"wins (Dealer busted)\n")
  } else if (p_val > value_d){
    cat("Player",num,"wins\n")
  } else if (p_val < d_val){
    cat("Player",num,"loses\n")
  } else cat("Player",num,"ties\n")
}

get_card <- function(card){
  cat("Hit ?\n")
  hit <- readline(prompt="Yes enter 'y' : ")
  
  if(hit == 'y' || hit == 'Y'){
    return(card)
  }
  return(NULL)
}

can_reduce <- function(p){
  for(i in 1:length(p)) {       
    if(p[[i]]@value == 11) return(TRUE)
  }
  return(FALSE)
} 

get_val <- function(p){
  p_val <- 0
  for(i in 1:length(p)) {       
    p_val <- p_val + p[[i]]@value
  }
  return(p_val)
}


show_cards <- function(p){
  for(i in 1:length(p)) {       
    cat(p[[i]]@name, "of", p[[i]]@suit, "\n")
  }
}
