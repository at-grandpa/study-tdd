module MoneyPackage
  class Money
    def initialize(@amount : Int32, @currency : String)
    end

    def currency
      @currency
    end

    def ==(other : MoneyPackage::Money)
      (@amount == other.@amount) && (other.currency == self.currency)
    end

    def times(multiplier : Int32)
      MoneyPackage::Money.new(@amount * multiplier, @currency)
    end

    def self.dollar(amount : Int32) : self
      MoneyPackage::Money.new(amount, "USD")
    end

    def self.franc(amount : Int32) : self
      MoneyPackage::Money.new(amount, "CHF")
    end
  end
end
