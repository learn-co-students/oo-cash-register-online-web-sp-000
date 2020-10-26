require "pry"
class CashRegister

  attr_accessor :discount, :total, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount.to_f
    @cart = []
    @last_transaction = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times {@cart << item}
    @last_transaction = [item, price, quantity]
  end

  def apply_discount
    if discount > 0
      @total = ((100 - @discount)/100) * @total
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @cart
  end

  def void_last_transaction
    @last_transaction[2].times{@cart.delete(@last_transaction[0])}
    @total = @total - (@last_transaction[1] * @last_transaction[2])
  end

end
