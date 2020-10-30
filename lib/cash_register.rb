require 'pry'

class CashRegister
  attr_accessor :total, :emp_disc, :last_transaction

  def initialize(emp_disc = 0)
    @total = 0
    @emp_disc = emp_disc
    @cart = []
  end

  def discount
    @emp_disc
  end

  def add_item(title,price,quantity=1)
    @total += price * quantity
    quantity.times {@cart << title}
    @last_transaction = price * quantity
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      @total -= @total * discount.to_f / 100
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @cart
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
