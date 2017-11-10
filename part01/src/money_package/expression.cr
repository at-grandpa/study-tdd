module MoneyPackage
  module Expression
    abstract def reduce(bank : Bank, to : String) : Money
  end
end
