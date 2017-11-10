require "./expression"

module MoneyPackage
  class Sum
    include Expression

    property augend : Money
    property addend : Money

    def initialize(@augend : Money, @addend : Money)
    end

    def reduce(bank : Bank, to : String) : Money
      amount : Int32 = @augend.reduce(bank, to).@amount + @addend.reduce(bank, to).@amount
      Money.new(amount, to)
    end
  end
end
