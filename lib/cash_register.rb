class CashRegister

  attr_accessor :total

  def initialize(total = 0)

    @total = total
  end

  def add_item(title, price)

  end

  def apply_discount

  end

  def items

  end

  def void_last_transaction
    self.@total.clear
  end
end
# to call an instance method inside another instance method, we use the self
