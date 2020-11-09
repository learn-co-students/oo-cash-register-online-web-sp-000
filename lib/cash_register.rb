require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_item_price

  def initialize(discount = 0.0)
    @total = 0.0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    quantity.times { @items << item }
    @last_item_price = price * quantity
    self.total += @last_item_price
  end

  def apply_discount
    if @discount == 0.0
      return "There is no discount to apply."
    else
      "After the discount, the total comes to $#{(self.total -= @discount * 10).to_i}."
    end
  end

  def void_last_transaction
    self.total -= @last_item_price
  end

end
