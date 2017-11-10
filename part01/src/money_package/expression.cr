module MoneyPackage
  module Expression
    abstract def plus(addend : Expression) : Expression
    abstract def reduce(bank : Bank, to : String) : Money
  end
end
