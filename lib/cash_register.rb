require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :items, :previous_total, :previous_items 
  
  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
    @items = []
  end
  
  def add_item(item_name, item_cost, quantity = 1)
    self.previous_items = self.items
    self.previous_total = self.total
    self.total += (item_cost * quantity)
    quantity.times{ self.items << item_name }
  end
  
  def apply_discount
    if self.discount > 0 
      self.total *= 1 - (self.discount / 100.0)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    self.total = self.previous_total
    self.items = self.previous_items
  end
end
