require 'pry'

class CashRegister
  attr_accessor :total, :discount, :all_items, :last_transaction
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @all_items = []
  end
  
  def add_item(title, price, quantity=1)
    self.total += price * quantity
    quantity.times do
      self.all_items << title
    end
    self.last_transaction = (price * quantity)
  end
  
  def apply_discount
    # binding.pry
    if discount != 0
      self.total = (self.total - (self.discount.to_f / 100 * self.total)).to_i
      "After the discount, the total comes to $#{self.total}."
    else 
      "There is no discount to apply."
    end
  end
  
  def items
    self.all_items
  end
  
  def void_last_transaction
    # binding.pry
    self.total = self.total - self.last_transaction
  end
  
end
