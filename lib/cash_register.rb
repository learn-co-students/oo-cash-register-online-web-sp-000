require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    self.items ||= []
    self.total = 0
    self.discount = discount
  end

  # def total
  #   @total
  # end

  def add_item(title, price, quantity = 1)
    self.total = price * quantity + self.total
    quantity.times {self.items << title}

    self.last_transaction = price * quantity

  end

  def apply_discount
    if self.discount != 0
      # self.discount = self.discount.to_f / 100
      # self.total = self.total - (self.discount * self.total)
      # self.total = self.total.to_i
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  # def items
  #   self.items
  # end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end
