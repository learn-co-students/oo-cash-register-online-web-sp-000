require 'pry'

class CashRegister 

 attr_accessor :total, :discount, :items, :last_amount

  def initialize(discount = 0)
    self.total = 0
    self.discount = discount
    self.items = []
    self.last_amount = 0
  end

  def add_item(product, price, quantity = 1) 
    quantity.times do 
      self.items << product 
    end
    self.total = total + price*quantity
    self.last_amount = price*quantity
  end

  def apply_discount
    if discount.to_i == 0 
      "There is no discount to apply."
    elsif 
      self.total = total - discount.to_i*10
      "After the discount, the total comes to $#{total}."
    end
  end

  def void_last_transaction
    self.total = total - last_amount 
  end
end

  