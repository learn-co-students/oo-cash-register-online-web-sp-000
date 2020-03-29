require 'pry'

class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end
  
  def apply_discount
    # binding.pry
    discounted_price = @total - (@total * @discount / 100)
  end
end
