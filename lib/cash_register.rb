class CashRegister

attr_accessor :total, :discount, :items, :transactions

  def initialize(discount = 0)
    @total = 0.0
    @discount = discount
    @items = []
    @transactions = []
  end
  
  def add_item(title, price, quantity = 1)

    self.transactions << price * quantity
    self.total += price * quantity

    i = 0
    while i < quantity
      self.items << title  
      i += 1
    end
    
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total *= (1 - (self.discount * 0.01))
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def void_last_transaction
    self.total -= self.transactions.pop
  end

end

# register = CashRegister.new
# register.add_item("tomato",1.76,2)
# puts register.void_last_transaction