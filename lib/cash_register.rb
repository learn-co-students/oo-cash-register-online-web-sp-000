require "pry"
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  def add_item(item, price, quantity = 1)
    @total = total + price * quantity
  quantity.times {@items.push (item)}
  end
  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      @total = @total * (1 - (@discount/100.00) )
       return "After the discount, the total comes to $#{total.to_i}."
    end
  end
  def items
    @items
  end
  def void_last_transaction
    self.total = self.total - self.total
  end
end
