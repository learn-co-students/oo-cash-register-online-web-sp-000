require 'pry'

class CashRegister
  attr_accessor :discount, :total, :items, :voided_price, :voided_item

def initialize(discount = nil)
  @total = 0
  @discount = discount
  @items = []
end

def total
  @total
end

def add_item(title, price, quantity = 1)
  adjusted_price = price * quantity
  @total = @total + adjusted_price
  @items.fill(title, @items.size, quantity)
  @voided_price = price * quantity
  @voided_item = quantity
end

def apply_discount
  if @discount != nil
    x = 100.0 - @discount.to_f
    percentage = x * 0.01
    adjusted_price = @total * percentage
    self.total = adjusted_price
    "After the discount, the total comes to $#{@total.to_i}."
  else
    "There is no discount to apply."
  end
end

def void_last_transaction
  @total = self.total - @voided_price
  @items = self.items[0..-@voided_item]
  if @items == []
    @items = 0.0
  end
end


end
