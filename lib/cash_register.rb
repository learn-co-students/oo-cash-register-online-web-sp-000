class CashRegister
  attr_accessor :discount, :total, :items, :last_item
  
  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def total
    @total
  end
  
  def add_item (title, price, quantity = 1)
    @last_item = price
    self.total += (price*quantity)
    quantity.times {self.items << title}
  end
  
  def apply_discount
    return "There is no discount to apply." if discount == 0
    self.total = self.total - (self.total * (@discount.to_f / 100.0)).to_i
    return "After the discount, the total comes to $#{self.total}."
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    self.total -= self.last_item
  end
  
end
