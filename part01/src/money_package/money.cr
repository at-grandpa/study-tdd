require "./expression"

module MoneyPackage
  class Money
    include Expression

    def initialize(@amount : Int32, @currency : String)
    end

    def times(multiplier : Int32) : Money
      Money.new(@amount * multiplier, @currency)
    end

    def plus(addend : Money) : Expression
      Sum.new(self, addend)
    end

    def reduce(bank : Bank, to : String) : Money
      rate : Int32 = (@currency == "CHF" && to == "USD") ? 2 : 1
      Money.new(@amount / rate, to)
    end

    def currency : String
      @currency
    end

    def ==(object : Object) : Bool
      money : Money = object.as(Money)
      (@amount == money.@amount) && (money.currency == currency)
    end

    def self.dollar(amount : Int32) : Money
      Money.new(amount, "USD")
    end

    def self.franc(amount : Int32) : Money
      Money.new(amount, "CHF")
    end
  end
end
