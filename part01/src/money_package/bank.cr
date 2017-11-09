module MoneyPackage
  class Bank
    def reduce(source : Expression, to : String)
      sum = source.as(Sum)
      sum.reduce(to)
    end
  end
end
