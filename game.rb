=begin
  Blackjack Game - Ruby practice
  This program is a simulation of the Blackjack card game.

  Game Logic:
  - Create dealer and player objects
  - Initialize new Deck of cards and player hands
  - While game_over is not true
    - Dealer draws 1 face-down card and none face up card
    - Dealer deals Human Player 2 cards
    - Ask player to Hit or Stand
      - Hit - Draw another card. If you bust, game_over = true
      - Stand - dealer reveals cards and Player wins if they are closer to 21 than the dealer
  
    - Dealer will have basic AI for now. He will always stand at 17 or higher and hit otherwise
=end

require_relative 'deck'
require_relative 'card'
require_relative 'player'

# TODO
