require 'pry'

class CashRegister 
  attr_accessor :total, :discount, :items, :last_transaction
 
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end 
  
  def add_item(item, price, item_quantity = 1)
    @total += price * item_quantity  
    item_quantity.times {@items << item}
    @last_transaction = price * item_quantity
  end 
  
  def apply_discount
    if @discount != 0 
      @total -= (@total * @discount / 100).to_i
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end
  end 
  
  def void_last_transaction
    @total -= @last_transaction
  end 
end 

# Instead of calling instance variables within instance methods, can call 
# instance methods inside other instance methods by using the self keyword, 
# where self refers to the instance on which we're operating:
    # self.total, self.items, self.last_transaction, self.discount
# But, calling the instance variable, defined withing attr_accessor, within 
# an instance method does same thing.
