require 'pry'
class CashRegister
  
  attr_accessor :title, :price, :discount, :total
  
  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end
  
  def apply_discount
    if @discount == 20
      new_total = @total - (@total * 0.20)
      binding.pry
       "After the discount, the total comes to $#{new_total}."
    else 
      "There is no discount to apply."
  end
end
end
