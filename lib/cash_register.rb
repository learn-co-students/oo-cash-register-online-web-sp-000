class CashRegister 
  
attr_accessor :total, :discount, :price, :items, :last_transaction
  
  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    @price = price.to_f
    self.total += @price * quantity
    counter = 0 
    while counter < quantity
      self.items << item
      counter += 1 
    end
    @last_transaction = self.price * quantity
  end
  
  def apply_discount
    if self.discount > 0
      self.total -= ((self.total * self.discount) / 100).to_i
      return "After the discount, the total comes to $#{self.total.to_i}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    if items[0] = nil
      self.total = 0.0
    else
      self.total -= @last_transaction
    end
  end
end
