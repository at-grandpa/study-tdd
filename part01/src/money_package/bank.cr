module MoneyPackage
  class Bank
    def reduce(source : Expression, to : String) : Money
      source.reduce(self, to)
    end

    def addRate(from : String, to : String, rate : Int32) : Void
    end
  end
end
