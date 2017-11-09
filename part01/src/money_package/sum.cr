require "./expression"

module MoneyPackage
  class Sum
    include Expression

    property augend : Money?
    property addend : Money?

    def initialize(augend : Money, addend : Money)
    end
  end
end
