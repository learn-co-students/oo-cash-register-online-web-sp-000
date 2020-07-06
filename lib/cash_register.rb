require 'pry'

class CashRegister
  attr_accessor :total, :discount, :last_transaction, :title, :items

  def initialize(discount=0)
   @total = 0
   @discount = discount
   @items = []
  end

  def add_item(title, price, quantity=1)
    #binding.pry
    new_price = price * quantity
    @total = total + new_price
    @title = title
    quantity.times do
      @items << title
    end
    self.last_transaction = price * quantity
  end

  def total
    @total
  end

  def apply_discount
    self.total = (total * ((100.0 - discount.to_f)/100)).to_i
    if discount != 0
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    #binding.pry
    @items
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end
