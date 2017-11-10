module MoneyPackage
  class Bank
    def reduce(source : Expression, to : String) : Money
      source.reduce(self, to)
    end

    def addRate(from : String, to : String, rate : Int32) : Void
    end

    def rate(from : String, to : String) : Int32
      (from == "CHF" && to == "USD") ? 2 : 1
    end
  end
end
