require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :items, :price
  
  def initialize(discount=20)
    @total= 0
    @discount = discount
    @items = []
  end
    
  def add_item(title, price, quantity = 1)
    @price = price * quantity
    @total = total + (price * quantity)
    quantity.times {@items << title}
  end
  
  def apply_discount
    new_discount = self.discount * 0.01
    self.total = total - (total * new_discount)
    int = self.total.to_i
    if int > 0
     "After the discount, the total comes to $#{int}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= @price
  end

    
end
