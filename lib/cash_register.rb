class CashRegister
  attr_accessor :total, :discount, :items, :transactions

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @transactions = []
    @items = []
  end

  def add_item(item, price, quantity = 1)
    self.total = self.total + price * quantity
    quantity.times {self.items << item }
    self.transactions << price * quantity
  end

  def apply_discount
    if self.discount 
      self.total -= self.total * discount / 100
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    if self.transactions 
      self.total -= self.transactions[-1]
    else
      "There are no transactions to void"
    end
  end

end
