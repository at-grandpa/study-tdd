module MoneyPackage
  class Money
    def ==(other : MoneyPackage::Money)
      (@amount == other.@amount) && (other.class == self.class)
    end
    def self.dollar(amount : Int32)
      MoneyPackage::Dollar.new(amount)
    end
  end
end
