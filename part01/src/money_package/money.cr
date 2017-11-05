module MoneyPackage
  class Money
    def ==(other : MoneyPackage::Money)
      @amount == other.@amount
    end
  end
end
