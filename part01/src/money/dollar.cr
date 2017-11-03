module Money
  class Dollar
    property amount : Int32

    def initialize(@amount : Int32)
    end

    def times(multiplier : Int32)
      @amount *= multiplier
      nil
    end
  end
end
