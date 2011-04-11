class ChipStack
  
  attr_accessor :size
  
  def initialize(ammt)
    @size = ammt
  end

  def size
    @size
  end

  def decrement(ammt)
    @size = @size - ammt
  end

  def increment(ammt)
    @size = @size + ammt
  end
end
