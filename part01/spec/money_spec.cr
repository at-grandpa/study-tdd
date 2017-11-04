require "./spec_helper"

describe Money do
  describe "testMultiplication()" do
    it "掛け算を計算できること" do
      five = Money::Dollar.new(5)
      product = five.times(2)
      product.amount.should eq 10
      product = five.times(3)
      product.amount.should eq 15
    end
  end
  describe "testEquality()" do
    it "$5は他の$5と等価であること" do
      Money::Dollar.new(5).equals(Money::Dollar.new(5)).should be_true
      Money::Dollar.new(5).equals(Money::Dollar.new(6)).should be_false
    end
  end
end
