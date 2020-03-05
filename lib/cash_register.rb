require "pry"
class CashRegister
  attr_accessor :total, :discount, :items, :void_last_transaction, :price_items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @price_items = []
  end
  
  def add_item(title, price, quantity = 0)
    if quantity != 0
    self.total = self.total + price * quantity
    quantity.to_i.times {@items << title}
    @price_items << price * quantity
  else
    self.total = self.total + price
    @items << title
    @price_items << price
  end
end

  def apply_discount
    if @discount > 0
      self.total = self.total - (self.total * (@discount * 0.01))
      return "After the discount, the total comes to $#{self.total.to_i}."
    else
      return "There is no discount to apply."
    end
end

  def void_last_transaction
    self.total = self.total - price_items.last
end

#binding pry  
end

