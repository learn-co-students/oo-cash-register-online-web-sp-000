require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    self.discount = discount
    self.items = []
    self.total = 0
  end

  def add_item(title, price, quantity = 1)
    self.total += price*quantity
    quantity.times do
      items << title
    end
    self.last_transaction = [title, price, quantity]
  end

  def apply_discount
    if self.discount == 0
      return "There is no discount to apply."
    else
      self.total = (self.total*(100-self.discount))/100
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    title = self.last_transaction[0]
    price = self.last_transaction[1]
    quantity = self.last_transaction[2]

    self.total -= (price*quantity)
    self.items.slice!(self.items.length-1-quantity, quantity)
  end
end
