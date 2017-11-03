module Money
  class Dollar
    property amount : Int32

    def initialize(@amount : Int32)
    end

    # chapter03
    def times(multiplier : Int32)
      @amount *= multiplier
    end
  end
end
