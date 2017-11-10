module MoneyPackage
  class Bank

    def initialize
      @rates = {} of Pair => Int32
    end

    def reduce(source : Expression, to : String) : Money
      source.reduce(self, to)
    end

    # ch15
    def addRate(from : String, to : String, rate : Int32) : Void
      @rates[Pair.new(from, to)] = rate
    end

    def rate(from : String, to : String) : Int32
      return 1 if from == to
      @rates[Pair.new(from, to)]
    end
  end
end
