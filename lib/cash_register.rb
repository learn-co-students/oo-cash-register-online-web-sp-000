class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction_amt

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction_amt = 0
  end

  def add_item(item, price, quantities=1)
    self.total += price * quantities
    self.last_transaction_amt = price * quantities
    quantities.times do
      self.items << item
    end
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total = self.total - (discount * self.total)/100
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction_amt
    self.total
  end

end
