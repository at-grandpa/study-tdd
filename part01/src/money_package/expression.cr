module MoneyPackage
  module Expression
    abstract def times(multilier : Int32) : Expression
    abstract def plus(addend : Expression) : Expression
    abstract def reduce(bank : Bank, to : String) : Money
  end
end
