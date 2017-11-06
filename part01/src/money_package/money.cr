module MoneyPackage
  abstract class Money
    def ==(other : MoneyPackage::Money)
      (@amount == other.@amount) && (other.class == self.class)
    end

    abstract def times(multiplier : Int32)
    abstract def currency

    def self.dollar(amount : Int32) : self
      MoneyPackage::Dollar.new(amount)
    end

    # ch09
    def self.franc(amount : Int32) : self
      MoneyPackage::Franc.new(amount)
    end
  end
end
