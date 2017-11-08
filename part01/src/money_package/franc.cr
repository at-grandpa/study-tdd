module MoneyPackage
  class Franc < MoneyPackage::Money
    # ch11
    def initialize(@amount : Int32, @currency : String)
      super(@amount, @currency)
    end
  end
end
