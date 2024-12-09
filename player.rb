# Player class that contains a name option and the current hand of cards.

require_relative 'hand'

class Player

  @@player_number = 1

  attr_accessor :name, :hand

  def initialize(name="Player #{@@player_number}")
    @name = name
    @hand = Hand.new()
    @@player_number += 1
  end
end
