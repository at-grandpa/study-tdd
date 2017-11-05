module MoneyPackage
  class Dollar < MoneyPackage::Money
    def initialize(@amount : Int32)
    end

    def times(multiplier : Int32)
      Dollar.new(@amount * multiplier)
    end

    def_equals @amount
  end
end
