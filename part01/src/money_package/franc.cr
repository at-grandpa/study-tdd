module MoneyPackage
  class Franc < MoneyPackage::Money
    def initialize(@amount : Int32, @currency : String)
      super(@amount, @currency)
    end

    def times(multiplier : Int32)
      MoneyPackage::Money.new(@amount * multiplier, @currency)
    end
  end
end
