require 'pry'
class CashRegister

  @@manifest = []

  attr_accessor :total, :discount, :title, :price, :quantity, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @@manifest << self
  end

  def add_item(title, price, quantity = 1)
      @title = title
      @price = price
      @quantity = quantity
      quantity.times {@items << self.title}
      self.total += price*quantity
  end

  def apply_discount
  if self.discount == 20
      var = self.total.to_f-(self.total.to_f*(20.to_f/100.to_f))
      self.total = var.to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
  end
  end

  def void_last_transaction
    self.total -= @@manifest[-1].price*quantity
  end

end
