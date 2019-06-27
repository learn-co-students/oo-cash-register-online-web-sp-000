
class CashRegister
  attr_accessor :total

  def initialize(total = 0)
    @total = total
  end

  def discount
    employee_discount = 20
    employee_discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end
end
