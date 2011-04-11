require 'spec_helper'

describe ChipStack do
  context "basic functionality" do

    before(:each) do
      @cs = ChipStack.new(100)
    end
    it "should initialize a chip stack of the size passed" do
      @cs.size.should == 100
    end

    it "should decrement properly" do
      @cs.decrement(10)
      @cs.size.should == 90
    end

    it "should increment properly" do
      @cs.increment(10)
      @cs.size.should == 110
    end
  end
end
