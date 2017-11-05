require "./spec_helper"

describe Money do
  describe "testMultiplication()" do
    it "掛け算を計算できること" do
      five = Money::Dollar.new(5)
      five.times(2).should eq Money::Dollar.new(10)
      five.times(3).should eq Money::Dollar.new(15)
    end
  end
  describe "testEquality()" do
    it "正しく等価性比較ができること" do
      (Money::Dollar.new(5) == Money::Dollar.new(5)).should be_true
      (Money::Dollar.new(5) == Money::Dollar.new(6)).should be_false
    end
  end
  describe "testFrancMultiplication()" do
    it "掛け算を計算できること" do
      five = Money::Franc.new(5)
      five.times(2).should eq Money::Franc.new(10)
      five.times(3).should eq Money::Franc.new(15)
    end
  end
end
