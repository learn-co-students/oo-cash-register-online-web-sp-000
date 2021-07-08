require 'pry'

class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = -1)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    @items << {item => {:quantity => quantity, :price => price}}
    @total += price * quantity
  end
  
  def apply_discount
    return "There is no discount to apply." if discount == -1
    @total = @total * (1 - @discount.to_f/100)
    return "After the discount, the total comes to $#{@total.to_s.split(/\.0*$/)[0]}."
  end
  
  def items
    items_array = []
      @items.each do |item|
        for i in 1 .. item[item.keys[0]][:quantity]
          items_array << item.keys[0].to_s
        end
      end
    items_array
  end
  
  def void_last_transaction
    item = @items.last
    @total -= item[item.keys[0]][:price] * item[item.keys[0]][:quantity]
    @items.pop
  end
  
end