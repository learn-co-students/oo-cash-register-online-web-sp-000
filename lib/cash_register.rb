require 'pry'
class CashRegister
  attr_accessor :total, :employee_discount, :items, :last_transaction

  def initialize(employee_discount = nil)
    @total = 0.0
    @employee_discount = employee_discount
    @items = []
  end

  def discount
    @employee_discount
  end

  def add_item(title, price, quantity = 1)
    @total = @total + price*quantity
    quantity.times {@items << title}
    @last_transaction = price*quantity
  end

  def apply_discount
    if @employee_discount
      @total = @total - @total*(@employee_discount.to_f/100)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end
end
