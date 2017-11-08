module MoneyPackage
  class Dollar < MoneyPackage::Money
    def initialize(@amount : Int32, @currency : String)
      super(@amount, @currency)
    end
  end
end
