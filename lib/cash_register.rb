require 'pry'
class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @old_total = @total
    @total = @total + (quantity * price)
    quantity_remaining = quantity
    until quantity_remaining == 0
      @items << title
      quantity_remaining -= 1
    end
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      discount_decimal = @discount / 100.0
      discount_amount = @total * discount_decimal
      @total = @total - discount_amount
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @items.pop
    @total = @old_total
  end
end
