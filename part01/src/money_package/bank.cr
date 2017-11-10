module MoneyPackage
  class Bank
    def reduce(source : Expression, to : String) : Money
      return source.as(Money).reduce(to) if source.is_a?(Money)
      sum = source.as(Sum)
      sum.reduce(to)
    end
  end
end
