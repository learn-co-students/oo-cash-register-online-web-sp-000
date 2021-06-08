require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :items, :last_item
  
  
  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount 
  end 
  
  def total
    @total 
  end 
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do 
      @items << title 
    end
    self.last_item = price * quantity 
  end 
  
  def apply_discount
    if @discount > 0  
     return "After the discount, the total comes to $#{@total -= @discount * 10}."
    else  
      return "There is no discount to apply."
    end 
  end 
  
  def items
    @items 
  end 
  
  def void_last_transaction
    self.total = @total - @last_item
  end 
  
  
end 
