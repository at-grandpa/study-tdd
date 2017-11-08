require "./spec_helper"

describe MoneyPackage do
  describe "testMultiplication()" do
    it "掛け算を計算できること" do
      five = MoneyPackage::Money.dollar(5)
      five.times(2).should eq MoneyPackage::Money.dollar(10)
      five.times(3).should eq MoneyPackage::Money.dollar(15)
    end
  end
  describe "testEquality()" do
    it "正しく等価性比較ができること" do
      (MoneyPackage::Money.dollar(5) == MoneyPackage::Money.dollar(5)).should be_true
      (MoneyPackage::Money.dollar(5) == MoneyPackage::Money.dollar(6)).should be_false
      (MoneyPackage::Money.franc(5) == MoneyPackage::Money.dollar(5)).should be_false
    end
  end
  describe "testFrancMultiplication()" do
    it "掛け算を計算できること" do
      five = MoneyPackage::Money.franc(5)
      five.times(2).should eq MoneyPackage::Money.franc(10)
      five.times(3).should eq MoneyPackage::Money.franc(15)
    end
  end
  describe "testCurrency()" do
    it "何の通貨なのかを表現できること" do
      MoneyPackage::Money.dollar(1).currency.should eq "USD"
      MoneyPackage::Money.franc(1).currency.should eq "CHF"
    end
  end
end
