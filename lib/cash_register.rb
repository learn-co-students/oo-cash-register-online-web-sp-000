require 'pry'
class CashRegister
  attr_accessor :total, :employee_discount, :items, :last_transaction



  def initialize (employee_discount = nil)
    @total = 0.00
    @employee_discount = employee_discount
    @items = []
    @last_transaction = ""
  end
  def discount
    self.employee_discount
  end
  def items
    @items
  end
  def add_item(title, price, quantity = 1)
    @last_transaction = price * quantity
    self.total += price * quantity
    quantity.times do
      items << title
    end
  end
  def apply_discount
    if @employee_discount
      @total = @total * (1 - @employee_discount / 100.0)
      "After the discount, the total comes to $#{@total.round}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end
end
