class CashRegister
  
  attr_accessor :total, :discount, :transaction, :items
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @transaction = []
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    self.transaction = price * quantity
    self.items.fill(item, self.items.length, quantity)
  end
  
  def apply_discount
    if discount !=0 
      self.total -= self.total * self.discount/100
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
  
 def void_last_transaction 
        self.total = self.total - self.transaction
  end
  
  
end
  
