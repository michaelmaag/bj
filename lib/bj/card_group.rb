class CardGroup
  attr_accessor :cards 

  def initialize(num_cards = 0)
    @cards = Card.random_set(num_cards)
  end

  def remove_top
    @cards.delete_at(0)
  end

  def peek_top
    @cards.first
  end

  def <<(that_card)
    if that_card.class == Card
      @cards << that_card
    else
      raise "cand add object of type #{that_card.class} to a CardGroup"
    end
  end

  def size
    @cards.size
  end

  def cards
    @cards
  end

  def merge(that_card_group)
    @cards = @cards + that_card_group.cards
  end

  def add(that_card)
    @cards << that_card
  end

  def ==(that)
    eql = true
    for i in 0...self.cards.size
      if !(self.cards[i] == that.cards[i])
        eql = false
        break
      end
    end
    return eql
  end
end
