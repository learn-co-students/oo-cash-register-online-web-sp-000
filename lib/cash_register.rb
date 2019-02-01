require "pry"
class CashRegister
  attr_accessor :total, :discount, :items, :price
  
  def initialize(discount=0)
    @total = 0 
    @discount = discount
    @items = []
   
  end
  
  def add_item(title, price, quantity = 1)
    @price = price
    @total +=quantity*price
    
    i = 0
    while quantity > i
      @items << title
      i+=1 
    end 
    
  end 
  
  def apply_discount
    if @discount > 0
      discount1 = (1 -(@discount.to_f/100))
      @total = @total*discount1
      @total = @total.to_i 
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end 
  end 
  
  def items
    @items 
  end 
  
  def void_last_transaction
    @total -= @price
  end 
end 