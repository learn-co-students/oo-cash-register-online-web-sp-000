require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :price, :quantity
  def initialize( money = 0 )
    @total = 0 
    @discount = money
    @items = []
  end
  
  def add_item(title, price, quantity = 1 )
    @total += (price * quantity)
    quantity.times do
    self.items << title 
    end
    @price = price
    @quantity = quantity
  end  
  
  def apply_discount
    if self.discount == 0 
      "There is no discount to apply."
    else
      @total = (@total - (self.discount.to_f/100*@total)).to_i
      #binding.pry
      "After the discount, the total comes to $#{@total}."
    end
  end
  
  def void_last_transaction
     binding.pry
    self.total = total - (price*quantity)
   
  end  
end