require '../lib/card'
require '../lib/deck'

RSpec.describe Deck do
  it 'make a deck' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    expect(deck.cards).to eq(cards)
  end

  it 'number of cards in a deck' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    expect(deck.count).to eq(3)
  end

  it 'return STEM cards' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    stem_cards = [card_2, card_3]
    deck = Deck.new(cards)
    stem_deck = Deck.new(stem_cards)
    # expect(card_2.category).to eq(:STEM)
    # expect(card_3.category).to eq(:STEM)
    # expect(deck.cards_in_category).to eq(stem_deck)
    expect(deck.cards_in_category(:STEM)).to eq(stem_cards)
   end

  #  it 'return Geography cards' do
  #   card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  #   card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  #   card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  #   expect(card_1.category).to be(:Geography)
  #   expect(deck.cards_in_category).to be[card_3]
  #  end

  #  it 'return Pop Culture cards' do
  #   card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  #   card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  #   card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  #   turn_1 = Turn.new("Juneau", card_1)
  #   turn_2 = Turn.new(9, card_2)
  #   turn_3 = Turn.new("Lungs", card_3)
  #   deck = [card_1, card_2, card_3]
  #   expect(
  #  end
end