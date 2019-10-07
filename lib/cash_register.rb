require 'pry'
class CashRegister
  
  attr_accessor :title, :price, :discount, :total, :items, :last_item
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
    @last_item
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times {@items << title}
    @last_item = price * quantity
end
  
  def apply_discount
    if discount > 0
    self.total = total - (total * (discount.to_f/100.0)).to_i
      "After the discount, the total comes to $#{self.total}."
    else   
      "There is no discount to apply."
    end
  end

 def items
    @items
  end
  
  def void_last_transaction
    self.total = @total - @last_item
  end

end
