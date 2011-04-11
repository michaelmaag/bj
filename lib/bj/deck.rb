class Deck < CardGroup
  def initialize(num_decks = 1)
    @cards = []
    for deck in 1..num_decks
      for i in 0..51
        @cards << Card.new(i)
      end
    end
    @cards.shuffle!
  end
end
