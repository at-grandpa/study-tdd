module Money
  class Dollar
    property amount : Int32

    def initialize(@amount : Int32)
    end

    def times(multiplier : Int32)
      Dollar.new(@amount * multiplier)
    end

    def equals(other : self)
      @amount == other.amount
    end

    def_equals @amount
  end
end
