# A class used to store playing card objects. 
# Provides methods for drawing cards and shuffling the deck.

require_relative 'card'

class Deck

    attr_accessor :cards, :num_cards

    def initialize()
        @num_cards = 52
        @cards = []

        for rank in Card.values.keys do
            for suit in Card.suits() do
                @cards << Card.new(rank, suit)
            end
        end
        @cards.shuffle!
    end

    # Draw a specified number of cards from the top of the deck
    def draw(num)
        if self.num_cards >= num
            self.cards.pop(num)
            self.num_cards -= num
        else 
            self.cards.pop(self.num_cards)
            puts "The deck is empty"
        end
    end

    def shuffle()
        self.cards.shuffle!
    end

    def empty?()
        return self.num_cards <= 0
    end
end