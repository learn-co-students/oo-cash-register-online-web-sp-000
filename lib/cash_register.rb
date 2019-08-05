require "pry"

class CashRegister
  attr_accessor :discount, :total, :items
  @last_price = 0
  @last_quantity = 0
  def initialize(discount = 20)
    self.total = 0
    self.discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @last_price = price
    @last_quantity = quantity
    self.total += (price * quantity)
    quantity.times do
      @items << item
    end
  end

  def apply_discount
    mytotal = self.total = self.total * ((100 - self.discount) / 100.0)
    mytotal > 0 ? "After the discount, the total comes to $#{mytotal.to_i}." : "There is no discount to apply."
  end

  def void_last_transaction
    self.total -= (@last_price * @last_quantity)
  end


end
