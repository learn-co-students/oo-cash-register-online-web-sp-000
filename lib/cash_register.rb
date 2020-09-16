class CashRegister
  attr_accessor :total, :items, :discount, :amount_off
  
  def initialize(discount = 0)
    self.total = 0
    self.discount = discount
    self.items = []
end
  def add_item(items, price, quantity = 1)
    @price = price
    @total += price * quantity
    @amount_off = price* quantity
    if quantity > 1 
      counter = 0 
      while counter < quantity 
      @items << items
      counter += 1
    end
  else 
    @items << items
end
end
  def apply_discount
    if discount > 0 
      self.total -= (@price * self.discount)/100
      return "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
end
end

  def void_last_transaction
    self.total -= @amount_off
    self.total
end
end