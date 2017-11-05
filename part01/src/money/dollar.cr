module Money
  class Dollar
    def initialize(@amount : Int32)
    end

    # ch05
    def times(multiplier : Int32)
      Dollar.new(@amount * multiplier)
    end

    def_equals @amount
  end
end
