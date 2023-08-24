require '../lib/turn'

class Round
  attr_reader :deck, :turns
  
  def initialize(deck)
    @deck = deck
    @turns = []
    @current_turn = 0
  end

  def current_card
    @deck.cards[@current_turn]
  end
end

# current_card - function
# take_turn - function
# turns - array - attribute
# number_correct - attribute
