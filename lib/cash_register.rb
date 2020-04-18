
class CashRegister
  :cash_register
  :cash_register_with_discount
  attr_accessor :total, :discount, :items, :last_price

  def initialize(discount = discount)
    @total = 0
    @discount = discount
    @items = []
    @last_price = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
      if quantity > 1
        quantity.times do
          self.items << title
        end
      else
        self.items << title
      end
    self.last_price << price * quantity
  end

  def items
    @items

  end

  def apply_discount
    if self.discount
      total_discount = (self.discount * 0.01 * self.total).ceil
      self.total -= total_discount
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.items.pop()
    self.total -= self.last_price.pop()
  end

end
