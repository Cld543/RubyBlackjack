# Card Class for use in the Deck and Hand classes.
# This class represents a standard playing card with 
# suits of spades, clubs, hearts, and diamonds as well
# as ranks of 2 - 10 and jack, queen, king, ace.
class Card

  @@suits = ["spades", "clubs", "hearts", "diamonds"]

  # rank => value
  @@values = {
    2 => 2,
    3 => 3,
    4 => 4,
    5 => 5,
    6 => 6,
    7 => 7,
    8 => 8,
    9 => 9,
    10 => 10,
    :jack => 10,
    :queen => 10,
    :king => 10,
    :ace => 11
  }
  attr_accessor :suit, :rank

  def initialize(rank, suit, face_down=false)
    @suit = suit
    @rank = rank
    @face_down = face_down  # Used for when dealer deals his first card. Hides suit and rank but not value 
  end

  def get_card_value()
    @@values[self.rank]
  end

  def get_card_name()
    if @face_down
      "??? of ???"
    else
      "#{self.rank} of #{self.suit}"
    end
  end

  def is_face_down?
    return @face_down
  end

  def self.suits()
    @@suits
  end

  def self.values()
    @@values
  end
end