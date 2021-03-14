class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0.0)
    @total = 0.0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times { self.items << title }
  end

  def apply_discount
    self.total -= self.discount * self.total / 100.0
    if @discount == 0.0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total = 0.0
  end
end
