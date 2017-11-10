module MoneyPackage
  class Bank
    def reduce(source : Expression, to : String) : Money
      source.reduce(to)
    end
  end
end
