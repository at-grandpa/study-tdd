require "./spec_helper"

describe Money do
  describe "multiplication" do
    it "掛け算を計算できること" do
      five = Money::Dollar.new(5)
      five.times(2)
      five.amount.should eq 10
      five.times(3)
      five.amount.should eq 15
    end
  end
end
