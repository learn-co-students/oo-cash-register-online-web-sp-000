require 'pry'

class CashRegister 
  
  attr_accessor :discount, :total, :title, :price, :quantity, :items
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end 
  
  def total 
    @total 
  end
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times do @items << title
  end
  @last_item_price = price
  @last_item_quantity = quantity
  end
  
  def apply_discount 
    if discount != 0
   @total -= @total * (discount.to_f/100)
   "After the discount, the total comes to $800."
   elsif discount == 0 
     "There is no discount to apply."
   end
  end
  
  def items
    @items
  end
    
  def void_last_transaction 
    @total -= (@last_item_price * @last_item_quantity)
    if @items.empty?
      total = 0.0
    end
  end 
end
