class Dealer
  attr_accessor :hand
  attr_accessor :shoe

  def initialize(shoe)
    @shoe = shoe
  end

  def hand=(hand)
    @hand = hand 
  end

  def hand
    @hand
  end

  def deal_self
    @hand << @shoe.draw
  end
end
