require 'pry'
class CashRegister
  attr_accessor :total, :discount, :all_items, :price, :quantity



  def initialize(discount = 0)
    self.all_items ||= []
    self.total = 0
    self.discount = discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    self.price = price
    self.quantity = quantity
    self.total = self.price * self.quantity + self.total
    quantity.times {self.all_items << title}

  end

  def apply_discount
    if self.discount != 0
      self.discount = self.discount.to_f / 100
      self.total = self.total - (self.discount * self.total)
      self.total = self.total.to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    self.all_items
  end

  def void_last_transaction
    self.total = self.total - self.price
  end

end
