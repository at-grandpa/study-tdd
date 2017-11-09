module MoneyPackage
  class Bank
    def reduce(source : Expression, to : String)
      sum = source.as(Sum)
      amount = sum.augend.@amount + sum.addend.@amount
      Money.new(amount, to)
    end
  end
end
