setClass("card", slots=list(name="character", suit="character", value="numeric"))

card1 <- new("card",name="Ace", suit="Spades", value=11)
card2 <- new("card",name="King", suit="Spades", value=10)
card3 <- new("card",name="Queen", suit="Spades", value=10)
card4 <- new("card",name="Jack", suit="Spades", value=10)
card5 <- new("card",name="10", suit="Spades", value=10)
card6 <- new("card",name="9", suit="Spades", value=9)
card7 <- new("card",name="8", suit="Spades", value=8)
card8 <- new("card",name="7", suit="Spades", value=7)
card9 <- new("card",name="6", suit="Spades", value=6)
card10 <- new("card",name="5", suit="Spades", value=5)
card11 <- new("card",name="4", suit="Spades", value=4)
card12 <- new("card",name="3", suit="Spades", value=3)
card13 <- new("card",name="2", suit="Spades", value=2)

card14 <- new("card",name="Ace", suit="Hearts", value=11)
card15 <- new("card",name="King", suit="Hearts", value=10)
card16 <- new("card",name="Queen", suit="Hearts", value=10)
card17 <- new("card",name="Jack", suit="Hearts", value=10)
card18 <- new("card",name="10", suit="Hearts", value=10)
card19 <- new("card",name="9", suit="Hearts", value=9)
card20 <- new("card",name="8", suit="Hearts", value=8)
card21 <- new("card",name="7", suit="Hearts", value=7)
card22 <- new("card",name="6", suit="Hearts", value=6)
card23 <- new("card",name="5", suit="Hearts", value=5)
card24 <- new("card",name="4", suit="Hearts", value=4)
card25 <- new("card",name="3", suit="Hearts", value=3)
card26 <- new("card",name="2", suit="Hearts", value=2)

card27 <- new("card",name="Ace", suit="Clubs", value=11)
card28 <- new("card",name="King", suit="Spades", value=10)
card29 <- new("card",name="Queen", suit="Spades", value=10)
card30 <- new("card",name="Jack", suit="Spades", value=10)
card31 <- new("card",name="10", suit="Spades", value=10)
card32 <- new("card",name="9", suit="Spades", value=9)
card33 <- new("card",name="8", suit="Spades", value=8)
card34 <- new("card",name="7", suit="Spades", value=7)
card35 <- new("card",name="6", suit="Spades", value=6)
card36 <- new("card",name="5", suit="Spades", value=5)
card37 <- new("card",name="4", suit="Spades", value=4)
card38 <- new("card",name="3", suit="Spades", value=3)
card39 <- new("card",name="2", suit="Spades", value=2)

card40 <- new("card",name="Ace", suit="Diamonds", value=11)
card41 <- new("card",name="King", suit="Diamonds", value=10)
card42 <- new("card",name="Queen", suit="Diamonds", value=10)
card43 <- new("card",name="Jack", suit="Diamonds", value=10)
card44 <- new("card",name="10", suit="Diamonds", value=10)
card45 <- new("card",name="9", suit="Diamonds", value=9)
card46 <- new("card",name="8", suit="Diamonds", value=8)
card47 <- new("card",name="7", suit="Diamonds", value=7)
card48 <- new("card",name="6", suit="Diamonds", value=6)
card49 <- new("card",name="5", suit="Diamonds", value=5)
card50 <- new("card",name="4", suit="Diamonds", value=4)
card51 <- new("card",name="3", suit="Diamonds", value=3)
card52 <- new("card",name="2", suit="Diamonds", value=2)

deck <-c(card1,card2,card3,card4,card5,card6,card7,card8,card9,card10,card11,card12,card13
   ,card14,card15,card16,card17,card18,card19,card20,card21,card22,card23,card24,card25,card26
   ,card27,card28,card29,card30,card31,card32,card33,card34,card35,card36,card37,card38,card39
   ,card40,card41,card42,card43,card44,card45,card46,card47,card48,card49,card50,card51,card52
)

shuffled_deck <- sample(1:52, 52)

next_card <- function(index){
  n_card <- deck[shuffled_deck[index]]
  return(n_card)
}
