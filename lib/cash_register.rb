class CashRegister
  
  attr_accessor :title, :price, :discount, :total
  
  def initialize(total = 0)
    @total = total
    @discount = discount
  end
  
  def total
    @total
  end
  
  def add_item(title, price)
    @total += .98
    @total
  end
  
end
