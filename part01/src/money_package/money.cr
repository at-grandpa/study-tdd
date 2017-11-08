module MoneyPackage
  class Money
    def initialize(@amount : Int32, @currency : String)
    end

    def currency
      @currency
    end

    def ==(other : self) : Bool
      (@amount == other.@amount) && (other.currency == self.currency)
    end

    def times(multiplier : Int32) : self
      Money.new(@amount * multiplier, @currency)
    end

    def plus(addend : self) : self
      Money.new(@amount + addend.@amount, @currency)
    end

    def self.dollar(amount : Int32) : self
      Money.new(amount, "USD")
    end

    def self.franc(amount : Int32) : self
      Money.new(amount, "CHF")
    end
  end
end
