class CashRegister
  attr_accessor :total, :discount
  
  
 
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item = [ ]
  end
  
  def add_item(item, price, quantity = 1)
    if count = 0 
      while count < quantity
      @item << item
      count +=1
    end
    else 
      @item << item
    end
    
    @price = price
    @quantity = quantity
    self.total += price * quantity
  end
  
  def apply_discount
    if discount != 0 
      self.discount = (self.total * 20)/100
      self.total = self.total - self.discount
      "After the discount, the total comes to $#{self.total}."
  else 
      "There is no discount to apply."
  end
  end
  
  def items
      @item
  end
  
  def void_last_transaction
   self.total -= @price
  end
  
end
