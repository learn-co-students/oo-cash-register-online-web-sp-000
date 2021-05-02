require 'pry'

class CashRegister
  attr_accessor :items, :total, :quantity, :discount
  
 
  
  def initialize(discount = 0)
    @items = [] 
    @total = 0  
    @discount = discount  
  end
  
  
  def add_item(title, price, quantity = 1)
    quantity.times do 
      @items << title 
    end 
    @last_total = @total
    @total += price * quantity
  end
    
  def apply_discount
    @total -= @total * @discount / 100 
    if discount > 0  
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end 
  end 
  
  def void_last_transaction
    @total = @last_total
  end 

end 