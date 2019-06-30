require 'pry'

class CashRegister
  attr_accessor :total, :discount, :previous_total, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = nil)
    @previous_total = @total
    if quantity == nil
      @total = @total + price
      @items << title
    else
      @total = @total + (price * quantity)
      quantity.times {@items << title}
    end
  end

  def apply_discount
    percent_remaining = (100 - @discount)/100.to_f
    if @discount != nil && @discount != 0
      @total = @total * percent_remaining
      @total = @total.to_i
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    return @items
  end

  def void_last_transaction
    @total = @previous_total
  end

end
