module Money
  class Dollar
    property amount : Int32

    def initialize(@amount : Int32)
    end

    # chapter02 start

    def times(multiplier : Int32)
      @amount *= multiplier
    end
  end
end
