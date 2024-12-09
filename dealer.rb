
class Dealer < Player

  attr_accessor :stand_num # The minimum hand score required to force the dealer to stand.

  def initialize(stand_num=17)
    @stand_num = stand_num
  end
end