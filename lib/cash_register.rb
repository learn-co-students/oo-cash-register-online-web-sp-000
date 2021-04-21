require "pry"
class CashRegister
  attr_accessor :total, :discount, :items, :last_item
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0 
    @items = []
  end 
  
  def add_item(title, price, quantity = 1)
    @last_item = (price*quantity)
    @total += @last_item
    until quantity == 0 
      @items << title
      quantity -= 1
    end 
  end 
  
  def apply_discount
    @total = ((@total.to_f/100) * (100-@discount)).to_i
    if @discount == 0 
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total}."
    end 
  end 
  
  def void_last_transaction
    @total -= @last_item 
  end 
  
end 
