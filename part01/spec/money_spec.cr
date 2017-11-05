require "./spec_helper"

describe MoneyPackage do
  describe "testMultiplication()" do
    it "掛け算を計算できること" do
      five = MoneyPackage::Dollar.new(5)
      five.times(2).should eq MoneyPackage::Dollar.new(10)
      five.times(3).should eq MoneyPackage::Dollar.new(15)
    end
  end
  describe "testEquality()" do
    it "正しく等価性比較ができること" do
      (MoneyPackage::Dollar.new(5) == MoneyPackage::Dollar.new(5)).should be_true
      (MoneyPackage::Dollar.new(5) == MoneyPackage::Dollar.new(6)).should be_false
      (MoneyPackage::Franc.new(5) == MoneyPackage::Franc.new(5)).should be_true
      (MoneyPackage::Franc.new(5) == MoneyPackage::Franc.new(6)).should be_false
      (MoneyPackage::Franc.new(5) == MoneyPackage::Dollar.new(5)).should be_false
    end
  end
  describe "testFrancMultiplication()" do
    it "掛け算を計算できること" do
      five = MoneyPackage::Franc.new(5)
      five.times(2).should eq MoneyPackage::Franc.new(10)
      five.times(3).should eq MoneyPackage::Franc.new(15)
    end
  end
end
