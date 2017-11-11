require "./expression"

module MoneyPackage
  class Sum
    include Expression

    property augend : Expression
    property addend : Expression

    def initialize(@augend : Expression, @addend : Expression)
    end

    def times(multiplier : Int32) : Expression
      Sum.new(@augend.times(multiplier), @addend.times(multiplier))
    end

    def plus(addned : Expression) : Expression
      Sum.new(self, addend)
    end

    def reduce(bank : Bank, to : String) : Money
      amount : Int32 = @augend.reduce(bank, to).@amount + @addend.reduce(bank, to).@amount
      Money.new(amount, to)
    end
  end
end
