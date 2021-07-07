require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_item_cost
  
  def initialize(discount = 0)
    @total = 0.0
    @items = []
    @discount = discount.to_f
  end
  
  def add_item(title, price, quantity = 1)
    amount = price * quantity
    @total += amount
    quantity.times {@items << title}
    @last_item_cost = amount
  end
  
  def apply_discount
    if @discount > 0
      @total *= 1 - @discount / 100
      "After the discount, the total comes to $#{@total.to_i}." #this wouldn't return the total precisely if there are decimal places
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction # this actually means void last item
      @total -= @last_item_cost
  end
  
end