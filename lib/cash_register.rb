require 'pry'

class CashRegister

  attr_accessor :quantity, :price, :total, :title, :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount

  end

  def total(total)
    @total = total.to_f
  end

  def add_item(title, price)
    register = CashRegister.new(title, price)
    @total = @total + price
    @quantity = nil

  end


  def apply_discount
    @discount = @discount.to_f / 100
    register = CashRegister.new(@discount)
    @discount = (total * @discount)
    @total = @total - @discount
    discount_message = "After the discount, the total comes to $#{@total.to_i}."
    return discount_message

  end

end
