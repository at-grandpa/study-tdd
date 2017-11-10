require "./expression"

module MoneyPackage
  class Sum
    include Expression

    property augend : Money
    property addend : Money

    def initialize(@augend : Money, @addend : Money)
    end

    def reduce(to : String) : Money
      amount : Int32 = @augend.@amount + @addend.@amount
      Money.new(amount, to)
    end
  end
end
