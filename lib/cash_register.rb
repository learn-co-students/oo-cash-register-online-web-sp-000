require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total = @total + (price * quantity)
    quantity.times {@items << item}
    @last_transaction = @total
  end

  def apply_discount
    if @discount > 0
      money_off = (@discount.to_f / 100.to_f) * @total
      @total = @total - money_off
      "After the discount, the total comes to $#{total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
