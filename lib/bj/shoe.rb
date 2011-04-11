class Shoe
  attr_accessor :cards

  def initialize(options = {})
    if num_decks = options[:num_decks]
      @cards = Deck.new(num_decks)
    else
      @cards = Deck.new(6)
    end
  end

  def draw
    @cards.remove_top
  end

  def peek_next
    @cards.peek_top
  end
end
