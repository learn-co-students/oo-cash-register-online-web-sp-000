class CashRegister
  attr_reader :discount, :last_cost
  attr_accessor :total, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    self.items += [item] * quantity
    self.total += price * quantity
    @last_cost = price * quantity
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total -= (self.total * 0.01 * discount).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.items.pop
    self.total -= self.last_cost
  end

end
