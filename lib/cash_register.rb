require "pry"
class CashRegister
  attr_accessor :total, :discount
  
  def initialize(employee_discount = 0)
     @total = 0
     @discount = employee_discount
     @pending_purchases = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @pending_purchases <<  [title, price, quantity]
  end
  
  def apply_discount()
    reduce = Float(@total) * Float(@discount)/100.0
    @total -= reduce
  end
end