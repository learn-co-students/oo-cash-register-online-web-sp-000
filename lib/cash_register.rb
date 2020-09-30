require "pry"

class CashRegister
  attr_accessor :total ,:discount, :items, :last_transaction
  
  def initialize(discount = nil)
    @items = []
    @discount = discount
    @total = 0
    @last_transaction = nil
  end
    
  def add_item(title,price,quantity = 1)
    quantity.times do @items << title
  end
    self.total = price * quantity + self.total
    self.total 
    @last_transaction = quantity * price
    end
    
    def apply_discount
   if self.discount 
   self.total = (total * ((100.0 - discount.to_f) / 100)).to_i
   return "After the discount, the total comes to $#{self.total}."
   else 
     return "There is no discount to apply."
    end 
  end
  
  def items 
    @items
  end
  
  def void_last_transaction
    self.total = self.total - @last_transaction
  end 
    
end