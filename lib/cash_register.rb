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
end