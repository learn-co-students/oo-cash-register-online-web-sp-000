require 'pry'
class CashRegister
  attr_accessor :total, :items, :last_price, :last_quantity, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = Float (discount)
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += price*quantity
    quantity.times {@items << item}
    @last_price = price
    @last_quantity = quantity
  end

  def void_last_transaction
    @total -= @last_price*@last_quantity
  end

  def apply_discount
    #binding.pry
    if @discount == 0.0
      return "There is no discount to apply."
    else
      @total *= 1.0 - @discount/100.0
      total_as_int = Integer (@total)
      return "After the discount, the total comes to $#{total_as_int}."
    end
  end
end
reg = CashRegister.new(20)
reg.add_item("a", 1000)
reg.apply_discount
