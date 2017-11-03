require "./spec_helper"

describe Money do
  describe "multiplication" do
    it "掛け算を計算できること" do
      five = Money::Dollar.new(5)
      product = five.times(2)
      product.amount.should eq 10
      product = five.times(3)
      product.amount.should eq 15
    end
  end
end
