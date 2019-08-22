require 'pry'
class CashRegister
  attr_accessor :total, :employee_discount, :items, :previous_transaction_amount

  def initialize(employee_discount = nil)
    @total = 0
    @employee_discount = employee_discount
    @items = []
  end

  def discount
    self.employee_discount
  end

  def items
    @items
  end

  def add_item(title, price, quantity = 1)
    @previous_transaction_amount = (price * quantity)
    self.total += price * quantity
    quantity.times do
      items << title
    end
  end

  def apply_discount
    if @employee_discount == nil
      "There is no discount to apply."
    else
      @employee_discount = @employee_discount.to_f / 100
      @employee_discount = (@total * @employee_discount)
      @total = @total - @employee_discount
      @employee_discount > 0
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total -= @previous_transaction_amount
  end
end
