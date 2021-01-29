require 'pry'

class CashRegister
  attr_accessor :total, :discount, :last_transaction, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    new_item = (price*quantity) #need to save new_item seperately from @total so it isn't associate with the instance variable
    self.last_transaction = new_item
    self.total = self.total + new_item
    quantity.times {self.items << title}
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total = self.total.to_f*((100.0 - self.discount.to_f)/100.0)
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end
