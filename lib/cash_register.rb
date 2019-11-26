class CashRegister

  attr_accessor :total, :discount, :items_list, :price_list

  def initialize(discount = nil)
    self.total = 0
    self.discount = discount
    self.items_list = []
    self.price_list = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    self.price_list << price * quantity
    while quantity > 0 do
      self.items_list << title
      quantity -= 1
    end
  end

  def apply_discount
    if self.discount
      self.total -= (self.discount * 0.01) * self.total
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    self.items_list
  end

  def void_last_transaction
    self.price_list.pop
    self.total = self.price_list.inject(0){|sum,x| sum + x }
  end
end
