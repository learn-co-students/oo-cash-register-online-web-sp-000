require 'pry'
class CashRegister
  
  attr_accessor :title, :price, :discount, :total, :items
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
    @new_item
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    @new_item = @total += price * quantity
    if quantity > 1
      amounts = title * quantity
      @items << amounts.split(", ")
    else
    @items << title 
  end
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
    self.total = @total - @new_item
  end

end
