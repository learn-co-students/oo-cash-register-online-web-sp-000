require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount=nil)
    @total = 0.0  
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quanity=1)
    @total += price * quanity
    quanity.times {@items << item}
    @last_transaction = price * quanity
  end
  
  def apply_discount
    if @discount
      @total *= (100 - @discount).to_f / 100
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total -= @last_transaction
  end
end
