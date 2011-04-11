require 'spec_helper'

describe Card do
  context "comapre" do
    it "should return false when the cards are unequal" do
      @card_one = Card.new(1)
      @card_two = Card.new(2)
      (@card_one == @card_two).should be_false
    end

    it "should return true when cards are equal" do
      @card_one = Card.new(2)
      @card_two = Card.new(2)
      (@card_one == @card_two).should be_true
    end
  end
end
