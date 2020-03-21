require "pry"
class CashRegister
  
  attr_accessor :total, :items, :discount
  
  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount
  end
  
  def add_item(item, cost = 0, number_items = 1)
   @cost = cost
   @number_items = number_items
    @total += cost * number_items
    
    number_items.times do
      @items << item
    end
  end
  
  
  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end  

def void_last_transaction
  @total -= @cost * @number_items
end 
  
end
