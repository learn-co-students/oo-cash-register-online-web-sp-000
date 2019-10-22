class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction_price,  :last_transaction_quantity

  def initialize(discount = 0)
    @total = 0.0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.last_transaction_price = price
    self.last_transaction_quantity = quantity
    quantity.times do
      self.items << title
    end
    self.total += price*quantity
  end

  def apply_discount
    if self.discount > 0
      self.total *= (1.0 - self.discount.to_f/100)
      message = "After the discount, the total comes to $#{self.total.to_i}."
    else
      message = "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.last_transaction_quantity.times do
      self.items.pop
      self.total -= self.last_transaction_price
    end
  end

end
