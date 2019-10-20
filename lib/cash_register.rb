require "pry"
class CashRegister
  attr_accessor :total, :discount
  
  def initialize(employee_discount = 0)
     @total = 0
     @discount = employee_discount
     @pending_purchases = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @pending_purchases <<  [title, price, quantity]
  end
  
  def apply_discount()
    return "There is no discount to apply." if @discount == 0
    reduce = Float(@total) * Float(@discount)/100.0
    @total -= reduce.to_i
    "After the discount, the total comes to $#{@total}."
  end
  
  def items
    item_arr = []
    @pending_purchases.each do |product|
      item_arr << [product[0]] * product[2]
    end
  end
end