module MoneyPackage
  class Money
    # ch08
    def ==(other : MoneyPackage::Money)
      (@amount == other.@amount) && (other.class == self.class)
    end
  end
end
