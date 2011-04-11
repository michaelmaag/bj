class Player
  attr_accessor :chip_stack
  attr_accessor :bet_size

  def initialize
    @chip_stack = 0
    @bet_size = 0
  end

  def chip_stack=(ammt)
    @chip_stack = ammt
  end

  def bet_size=(amnt)
    @bet_size = amnt
  end
end
