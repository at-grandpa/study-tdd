module MoneyPackage
  class Franc
    def initialize(@amount : Int32)
    end

    def times(multiplier : Int32)
      Franc.new(@amount * multiplier)
    end

    def_equals @amount
  end
end
