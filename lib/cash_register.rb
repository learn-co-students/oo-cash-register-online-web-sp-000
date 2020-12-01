class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction



  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    self.last_transaction = [title, price, quantity]
    quantity.times {self.items << title}
  end

  def apply_discount
    if self.discount > 0
      self.total = self.total * (100 - self.discount)/100
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction[1] * self.last_transaction[2]
    self.last_transaction[2].times {self.items.pop}
  end



end
