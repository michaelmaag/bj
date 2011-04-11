require 'spec_helper'

describe Dealer do
  context "deal" do
    it "should add the top card from the shoe into the dealer's hand" do
      @shoe = Shoe.new
      top_card = @shoe.peek_next
      @dealer = Dealer.new(@shoe)
      @dealer.hand = CardGroup.new(2)
      correct_next_hand = CardGroup.new
      correct_next_hand.merge(@dealer.hand)
      correct_next_hand.add(top_card)
      @dealer.deal_self
      @dealer.hand.size.should == 3
      @dealer.hand.should  == correct_next_hand
    end
  end
end
