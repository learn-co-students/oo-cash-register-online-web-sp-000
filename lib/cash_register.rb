class CashRegister
  attr_accessor :total, :employee_discount, :items, :last_transaction_amount

  def initialize(employee_discount = 0, total = 0)
    @total = total
    @employee_discount = employee_discount
    @items = []
  end

  def discount
    @employee_discount
  end

  def add_item(item, price, quantity = 1)
    quantity.times do
      @items << item
    end
    @last_transaction_amount = self.total += (price*quantity)
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total -= (self.total * (self.discount * 0.01))
      "After the discount, the total comes to $#{self.total.ceil}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= self.last_transaction_amount
  end
end
