require 'pry'
class CashRegister
  
  attr_accessor :title, :price, :discount, :total
  
  def initialize(total = 0)
    @total = total
    @discount = discount
  end
  
  def total
    @total
  end
  
  #accepts title, price, optional quantity
  #increases total
  #keeps previous total by adding increase to total and saving
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end
  
end
