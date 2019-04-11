require 'pry'


class CashRegister

attr_accessor :total, :discount
 

def initialize(discount = nil)
  @total = 0
  @discount = discount
  @items = []
end 

  
def add_item(title, price, quantity = 1)
  @title = title 
  @price = price 
  @quantity = quantity
  
  @last_transaction_total = price * quantity 
  @total += @last_transaction_total
  quantity.times {@items << title}
end 

def apply_discount
  if @discount == nil
   return "There is no discount to apply."
  else 
    @total -= @discount * @price / 100 
    return "After the discount, the total comes to $#{@total}."
   end 
end 

def items 
  @items 
  
end 

def void_last_transaction
   @total -= @last_transaction_total
end 

end 
