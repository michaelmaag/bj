# models on playing card by assigning it a number 0 - 51 which maps uniquely to a 
# card in a standard deck
class Card
  attr_accessor :index

  SUIT_MAP = {
    0 => "D",
    1 => "H",
    2 => "C",
    3 => "S"
  }

  CARDINALITY_MAP = {
    0 => "A",
    1 => "2",
    2 => "3",
    3 => "4",
    4 => "5",
    5 => "6",
    6 => "7",
    7 => "8",
    8 => "9",
    9 => "10",
    10 => "J",
    11 => "Q",
    12 => "K"
  }

  # return decimal value of card
  def value
    if [0, 13, 25, 37].member(@index)
     return 11
    elsif @index % 13 <= 4
      return 10
    else 
      return @index + 1
    end 
  end

  # return rank, aces lo
  def rank
    (@index % 13) + 1
  end

  # return string representation of a card
  def to_s
    "#{CARDINALITY_MAP[@index % 13]}#{SUIT_MAP[@index / 13]}"
  end

  # initialize card
  def initialize(index = nil)
    if index
      @index = index
    else
      @index = rand(51)
    end
  end

  def ==(that)
    @index == that.index
  end

  #return index value of card
  def index
    @index
  end

  def self.random_set(desired_size)
    require 'set'
    set = Set.new
    while set.size < desired_size
      num = rand(52)
      if !set.member?(num)
        set << num
      end
    end

    cards = []

    for num in set
      cards << Card.new(num)
    end

    return cards
  end

  def self.gimme_new
    Card.new(1)
  end
end
