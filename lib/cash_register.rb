require 'pry'

class CashRegister
  attr_accessor :total, :discount 
  
  def initialize(discount = 10)  
    @total = 0 
    @discount = discount
  end 
  
  def discount
    @discount
  end 
  
  def add_item(title, price, quant = 1)
    added_item = @total += price *= quant 
  end 
  
  def apply_discount
   total_after_discount = @total -= @total * @discount.to_f / 100 
   "After the discount, the total comes to $#{total_after_discount.to_i}."
  end 
end 
