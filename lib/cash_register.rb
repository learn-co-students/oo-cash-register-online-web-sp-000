#WDGTR
require 'pry'
class CashRegister
  attr_accessor :total, :discount, :price, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @total += @price * quantity
    quantity.times do
      @items << item
    end
    @last_transaction = quantity * price
  end

  def apply_discount
    if @discount > 0
      employee_discount = (@discount / 100.0) * @total
      new_total = @total - employee_discount
      @total = new_total.to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
