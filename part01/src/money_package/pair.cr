module MoneyPackage
  class Pair
    def initialize(@from : String, @to : String)
    end

    def ==(object : Object) : Bool
      pair : Pair = object.as(Pair)
      @from == pair.@from && @to == pair.@to
    end

    def hash
      0
    end
  end
end
