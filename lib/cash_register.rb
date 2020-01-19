require 'pry'

class CashRegister
  attr_accessor :total 
  
  def initialize(discount = 10 )  
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
    binding.pry
  end 
end 
