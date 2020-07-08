require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :price, :transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @transaction = []

  end

  def add_item(title, price, quantity = 1)
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << title
        @transaction << price
        counter += 1
      end
    else
        @items << title
        @transaction << price
    end

    self.total += price * quantity
    @price = price
    @quantity = quantity
  end

  def apply_discount
    reduced_price = (self.total * discount)/100
    if discount > 0
      self.total = self.total - reduced_price
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= @price * @quantity
  end
end
