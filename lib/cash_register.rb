
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title,price, quantity=1)
    self.total += (price*quantity)
    quantity.times {self.items << title}
    self.last_transaction = [title,price,quantity]
  end

  def apply_discount
     discount = self.total * (self.discount.to_f / 100)
     discounted_total = self.total -= discount.to_i
     discount == 0 ? "There is no discount to apply.":"After the discount, the total comes to $#{discounted_total}."
  end

  def void_last_transaction
    self.total -= self.last_transaction[1] * self.last_transaction[2]
    self.last_transaction[2].times do
      self.items.delete_at(self.items.index(self.last_transaction[0]) || self.items.count)
    end
  end

end
