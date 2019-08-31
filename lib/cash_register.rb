require 'pry'

class CashRegister
  attr_accessor :discount, :total, :items, :last
  

  def initialize(discount = nil)
    @discount = discount
    @total = 0.00
    @items = [] 
    @last = 0 
  
  end 
  
  
  def discount 
    @discount 
  end 

  def items 
    @items  
  end 
  
  
  def total 
    @total 
  end 
  
  
  def add_item(title, price, quantity = 1)
  
    self.total += price * quantity
    quantity.times do 
    @items << title 
   end 
    self.last = [title, price, quantity]
  end 
  
  
  def apply_discount
   
    if @discount
       
       
      @total = @total - @total * (@discount.to_f / 100)
      @total = @total.to_i
         "After the discount, the total comes to $#{@total}."

      else 
           "There is no discount to apply."
    
    end 
  end 
    
  
  def items
    
    @items 
    
  end 
    
    
  def void_last_transaction
  
 
  
  self.total -= self.last[1] * self.last[2]
    
   self.total     
end 
  
  
  
  
  
  
end


 