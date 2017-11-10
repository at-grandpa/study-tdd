require "./spec_helper"

include MoneyPackage

describe MoneyPackage do
  describe "testMultiplication()" do
    it "掛け算を計算できること" do
      five : Money = Money.dollar(5)
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
      five : Money = Money.dollar(5)
      sum : Expression = five.plus(five)
      bank : Bank = Bank.new
      reduced : Money = bank.reduce(sum, "USD")
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
  describe "testReduceSum()" do
    it "Sumをreduceに渡すと足されて換算されること" do
      sum : Expression = Sum.new(Money.dollar(3), Money.dollar(4))
      bank : Bank = Bank.new
      result : Money = bank.reduce(sum, "USD")
      result.should eq Money.dollar(7)
    end
  end
  describe "testReduceMoney()" do
    it "BankのreduceメソッドにMoneyを渡した場合い指定通貨に換算できること" do
      bank : Bank = Bank.new
      result : Money = bank.reduce(Money.dollar(1), "USD")
      result.should eq Money.dollar(1)
    end
  end
  describe "testReduceMoneyDifferentCurrency()" do
    it "異なる通貨を計算して変換できること" do
      bank : Bank = Bank.new
      bank.addRate("CHF", "USD", 2)
      result : Money = bank.reduce(Money.franc(2), "USD")
      result.should eq Money.dollar(1)
    end
  end
  describe "testIdentityRate()" do
    it "同一通貨の場合はrateとして１を返すこと" do
      Bank.new.rate("USD", "USD").should eq 1
    end
  end
  describe "testMixedAddition()" do
    it "異なる通貨の足し算ができること" do
      fiveBucks : Expression = Money.dollar(5)
      tenFrancs : Expression = Money.franc(10)
      bank : Bank = Bank.new
      bank.addRate("CHF", "USD", 2)
      result : Money = bank.reduce(fiveBucks.plus(tenFrancs), "USD")
      result.should eq Money.dollar(10)
    end
  end
end
