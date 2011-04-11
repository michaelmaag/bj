module BJ
  class Game
    attr_accessor :player
    attr_accessor :shoe_size
    attr_accessor :rules
    attr_accessor :shoes_to_play

    def initialize
      @player = Player.new
    end

    def player
      @player
    end

    def shoe_size=(decks)
      @decks = decks
    end

    def rules=(rules)
      @rules = rules
    end

    def shoes_to_play=(shoes)
      @shoes_to_play = shoes
    end
  end
end
