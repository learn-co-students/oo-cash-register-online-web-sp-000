require 'pry'

class CashRegister
  attr_accessor :total, :discount, :add_item, :apply_discount, :items, :void_last_transaction, :prices

  def initialize(discount = 0)
    @total = 0.0
    @discount = discount
    @items = []
    @prices = []
  end

  def add_item(title, price, quantity = 1)
    stuff = price * quantity
    if quantity > 1
      self.total += stuff
      item_arr = ("#{title}," * quantity).split(",")
      @items << item_arr
      @items.flatten!
    else
      self.total += price
      @items << title
      @prices << price
    end
  end

  def apply_discount
    if @discount > 0
      self.total -= (self.total * (self.discount.to_f * 0.01))
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
   end

   def void_last_transaction
     if self.prices.length > 0
       self.total = self.total - self.prices.last.to_f
     elsif self.prices.length == 0
         self.total = 0.0
       end
   end

end
