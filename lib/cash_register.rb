require "pry"

class CashRegister 
  attr_accessor :total, :discount, :total, :items, :last 
  
  def initialize(discount = 0)
    @total = 0
    @items = []
    @last = []
    @discount = discount
  end
  
  def total 
    @total 
  end 
  
  def add_item(item, price, quantity = 1)
    counter = quantity
    while counter > 0
      @items << item
      counter -= 1
    end
    @total += price * quantity
    @last << price * quantity
  end 
  
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      total = @total.to_f
      discount_rate = (100.to_f - @discount) / 100.to_f
      @total = total * discount_rate
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items 
  end
  
  def void_last_transaction
    @items.pop()
    @total -= @last.pop()
    if @items.size == 0 
      @total = 0.0  
    end
  end
  
end
