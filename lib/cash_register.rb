require 'pry'
class CashRegister
  attr_accessor :total , :discount , :items , :last_transaction 
  
  def initialize(discount = 0)
  
    @total = 0
    @discount = discount
    @items = []
  
  end 
  
  
  def add_item(title, price, quantity = 1)
    
    self.total += price * quantity
        counter = 0 
        until counter == quantity
          @items << title 
          counter += 1 
        end 
      
      @last_transaction = price * quantity
  
  end 
  
  def apply_discount
   
    if @discount > 0  
    @total = (100.0 - @discount.to_f) / 100 * (@total) 
      @total = @total.to_i 
       "After the discount, the total comes to $#{@total}."
    else 
       "There is no discount to apply."
    end 
  
  end
  
  def void_last_transaction
   
   @total = @total - @last_transaction 
  
  end 
  
  
end 