module MoneyPackage
  class Franc < MoneyPackage::Money
    def initialize(@amount : Int32, @currency : String)
      super(@amount, @currency)
    end

    def times(multiplier : Int32)
      Money.franc(@amount * multiplier)
    end
  end
end
