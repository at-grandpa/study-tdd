module MoneyPackage
  class Dollar < MoneyPackage::Money
    def initialize(@amount : Int32, @currency : String)
      super(@amount, @currency)
    end

    def times(multiplier : Int32)
      Money.dollar(@amount * multiplier)
    end
  end
end
