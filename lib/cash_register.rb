require 'pry'

class CashRegister
  attr_accessor :discount, :total, :last_transaction
  attr_reader :total, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, qty = 1)
    self.total += price * qty
    qty.times { self.items << item }
    self.last_transaction = price * qty
  end

  def apply_discount
    if self.discount != 0
      discount_to_percentage = self.discount * 0.01
      total_discount = self.total * discount_to_percentage
      self.total -= total_discount
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end
end