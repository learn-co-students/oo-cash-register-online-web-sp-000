require 'pry'

class CashRegister
  
  attr_accessor :discount, :items, :total, :last_add
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_add = {}
  end
  
  def add_item(title, price, quantity = 1)
    @last_add["title"] = title
    @last_add["price"] = price
    @last_add["quantity"] = quantity
    
    quantity.times do
      @total += price
      @items << title
    end
  end
  
  def apply_discount
    if @discount > 0
      @total = @total.to_f * ((100.0 - @discount.to_f) / 100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @last_add["quantity"].times do
      @total -= @last_add["price"]
      @items.pop
    end
  end
  
end
