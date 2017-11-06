module MoneyPackage
  class Franc < MoneyPackage::Money
    def initialize(@amount : Int32, @currency : String)
      @currency = "CHF"
    end

    def times(multiplier : Int32)
      Franc.new(@amount * multiplier)
    end
  end
end
