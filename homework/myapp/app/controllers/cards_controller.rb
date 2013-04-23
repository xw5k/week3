class CardsController < ApplicationController



  def deal

    carddeck = ["A of Spades","2 of Spades","3 of Spades","4 of Spades","5 of Spades","6 of Spades","7 of Spades","8 of Spades","9 of Spades","10 of Spades","J of Spades","Q of Spades","K of Spades",
                "A of Hearts","2 of Hearts","3 of Hearts","4 of Hearts","5 of Hearts","6 of Hearts","7 of Hearts","8 of Hearts","9 of Hearts","10 of Hearts","J of Hearts","Q of Hearts","K of Hearts",
                "A of Diamonds","2 of Diamonds","3 of Diamonds","4 of Diamonds","5 of Diamonds","6 of Diamonds","7 of Diamonds","8 of Diamonds","9 of Diamonds","10 of Diamonds","J of Diamonds","Q of Diamonds","K of Diamonds",
                "A of Clubs","2 of Clubs","3 of Clubs","4 of Clubs","5 of Clubs","6 of Clubs","7 of Clubs","8 of Clubs","9 of Clubs","10 of Clubs","J of Clubs","Q of Clubs","K of Clubs"]
 
    carddeck.shuffle!(random: Random.new)

    card1 = PokerCard.new
    card1.card = carddeck[0]

    card2 = PokerCard.new
    card2.card = carddeck[13]

    card3 = PokerCard.new
    card3.card = carddeck[26]

    card4 = PokerCard.new
    card4.card = carddeck[39]

    card5 = PokerCard.new
    card5.card = carddeck[51]

    @cardsdealt = [card1, card2, card3, card4, card5]

  end

end