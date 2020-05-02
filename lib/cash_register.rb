require 'pry'


class CashRegister 
  
  attr_accessor :total, :discount, :items, :last_transaction
  
  
  def initialize(employee_discount=0)
    @total = 0
    @discount = employee_discount
    @items = []
  end
  
  
  def add_item(item, price, quantity=1)
    self.total += (price * quantity)
    counter = 0 
    until counter == quantity
      self.items << item 
      counter += 1 
    end
    @last_transaction = (price * quantity)
  end
  
  def apply_discount
    if @discount == 0 
      "There is no discount to apply."
    else
    discounted = (@total * ((100.0 - @discount)/100.0))
    @total = discounted
    "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    subtract = @total - @last_transaction
    @total = subtract
    @total
  end
  
  
end