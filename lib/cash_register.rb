#WDGTR
require 'pry'
class CashRegister
  attr_accessor :total, :discount, :price

  def initialize(discount = 0)
    @total = 0
    @discount = 20
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @total += @price * quantity
  end

  def apply_discount
    if @discount > 0
      employee_discount = (@discount / 100.0) * @total
      new_total = @total - employee_discount
      @total = new_total.to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply"
    end
  end

end
