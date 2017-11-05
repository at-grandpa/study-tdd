module MoneyPackage
  class Money
    def ==(other : MoneyPackage::Money)
      (@amount == other.@amount) && (other.class == self.class)
    end
  end
end
