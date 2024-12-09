# Class that represents the current hand of cards that each player 
# currently has.

require_relative 'card'

class Hand 

  attr_accessor :cards, :num_cards, :hand_score

  def initialize(num_cards=0, hand_score=0)
    @cards = []
    @num_cards = 0
    @hand_score = 0
  end

  def add_card(new_card)
    self.cards << new_card
    self.num_cards += 1
    if new_card.rank == :ace && self.hand_score + 11 > 21
      self.hand_score += 1
    else
      self.hand_score += new_card.get_card_value
    end
  end

  def show_hand()
    puts "Current Hand:"
    self.cards.each { |card| 
      print card.get_card_name()
      print ", "
    }
    puts "\n"
    puts "Hand Score: #{self.hand_score}"
  end
end