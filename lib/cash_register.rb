require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :price

  def initialize(discount = 20)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    self.items << title

  end

  def apply_discount
    reduced_price = (self.total * discount)/100
    if discount > 0
      self.total = self.total - reduced_price
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
    binding.pry
  end

  def items
    @items
  end

  def void_last_transaction

  end

end
