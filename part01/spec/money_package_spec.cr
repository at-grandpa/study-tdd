require "./spec_helper"

include MoneyPackage

describe MoneyPackage do
  describe "testMultiplication()" do
    it "掛け算を計算できること" do
      five = Money.dollar(5)
      five.times(2).should eq Money.dollar(10)
      five.times(3).should eq Money.dollar(15)
    end
  end
  describe "testEquality()" do
    it "正しく等価性比較ができること" do
      (Money.dollar(5) == Money.dollar(5)).should be_true
      (Money.dollar(5) == Money.dollar(6)).should be_false
      (Money.franc(5) == Money.dollar(5)).should be_false
    end
  end
  describe "testCurrency()" do
    it "何の通貨なのかを表現できること" do
      Money.dollar(1).currency.should eq "USD"
      Money.franc(1).currency.should eq "CHF"
    end
  end
  describe "testSimpleAddition()" do
    it "足し算を計算できること" do
      five = Money.dollar(5)
      sum : Expression = five.plus(five)
      bank = Bank.new
      reduced = bank.reduce(sum, "USD")
      reduced.should eq Money.dollar(10)
    end
  end
  describe "testPlusReturnsSum()" do
    it "pulsメソッドはSumクラスを返すこと" do
      five = Money.dollar(5)
      result : Expression = five.plus(five)
      sum : Sum = result.as(Sum)
      sum.augend.should eq five
      sum.addend.should eq five
    end
  end
end
