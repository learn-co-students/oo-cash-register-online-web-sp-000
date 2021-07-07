require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :last_item

  def initialize(employee_discount=0)
    @total = 0
    @items = []
    @discount = employee_discount
  end

  def add_item(title, price, quantity=1)
    self.total += price*quantity
    quantity.times {self.items << title}
    self.last_item = price
  end

  def apply_discount
    if self.discount != 0
      self.total = self.total - (self.total * discount/100)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_item
  end

end
