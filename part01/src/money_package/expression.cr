module MoneyPackage
  module Expression
    abstract def reduce(to : String) : Money
  end
end
