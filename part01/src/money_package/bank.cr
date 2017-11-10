module MoneyPackage
  class Bank
    # ch14
    def reduce(source : Expression, to : String) : Money
      source.reduce(to)
    end
  end
end
