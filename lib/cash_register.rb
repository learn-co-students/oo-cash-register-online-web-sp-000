class CashRegister
  attr_accessor :total, :discount, :items
  
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end 

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    while quantity > 0 
        @items << title
        quantity -= 1
    end
  end
  
  def apply_discount
    if self.discount > 0
      self.total = (total - (total * (discount/100.0))).to_i
      return "After the discount, the total comes to $#{self.total}."
    else 
      return "There is no discount to apply."
    end 
  end 
  
  def void_last_transaction
    self.total = 0
  end 
  
  
  
end 
