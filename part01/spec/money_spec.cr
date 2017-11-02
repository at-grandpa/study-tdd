require "./spec_helper"

describe Money do
  describe "multiplication" do
    it "$5 * 2 = 10 になること" do
      five = Money::Dollar.new(5)
      five.times(2)
      five.amount.should eq 10
    end
  end
end
