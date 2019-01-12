require 'pry'
class CashRegister
  attr_accessor :discount, :total
  
  def initialize(discount = nil)
    @items = []
    @last_item = 0
    @total = 0.0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    quantity.times do @items << title end
    @last_item = price * quantity
    @total += price * quantity
  end
  
  def apply_discount
    if @discount
      @total = @total - (@total * @discount / 100.00)
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total = @total - @last_item
  end
  
end
