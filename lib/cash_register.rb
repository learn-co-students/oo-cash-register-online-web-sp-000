
class CashRegister
  
  attr_accessor :total, :discount, :items, :last_item
  
  def initialize(discount = 0)
    @total = 0     
    @discount = discount
    @items = []
    @last_item = {}
  end
  
  def add_item(title, price, quantity = 1)
    quantity.times { self.items << title }
    self.last_item.clear[title] = [price, quantity]
    self.total += price * quantity
  end
  
  def apply_discount
    return "There is no discount to apply." if self.discount == 0
    self.total *= (100 - discount) / 100.00
    "After the discount, the total comes to $#{self.total.to_i}."
  end
  
  def void_last_transaction
    self.last_item.each do |item, value_array|
      quantity = value_array.pop
      price = value_array.pop
      self.items.pop(quantity)
      self.total -= price * quantity
    end
  end
  
end