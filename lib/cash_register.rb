require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_item

  def initialize(employee_discount=nil)

    @total = 0
    @items = []

    if employee_discount
      @discount = employee_discount
    end

  end

  def add_item(title, price, quantity=nil)

    if quantity
      @total += price*quantity
      quantity.times {@items << title}
    else
      @total += price
      @items << title
    end

    @last_item = price

  end

  def apply_discount
    if @discount == 20
      @total = @total - @total*0.20
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= self.last_item
  end

end
