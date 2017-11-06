module MoneyPackage
  abstract class Money
    def initialize(@amount : Int32, @currency : String)
    end

    def currency
      @currency
    end

    def ==(other : MoneyPackage::Money)
      (@amount == other.@amount) && (other.class == self.class)
    end

    abstract def times(multiplier : Int32)

    def self.dollar(amount : Int32) : self
      MoneyPackage::Dollar.new(amount, "USD")
    end

    def self.franc(amount : Int32) : self
      MoneyPackage::Franc.new(amount, "CHF")
    end
  end
end
