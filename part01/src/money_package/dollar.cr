module MoneyPackage
  class Dollar < MoneyPackage::Money
    def initialize(@amount : Int32)
      @currency = "USD"
    end

    def times(multiplier : Int32)
      Dollar.new(@amount * multiplier)
    end

    def currency
      @currency
    end
  end
end
