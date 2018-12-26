class CashRegister
  attr_accessor :total, :discount, :track_last
  
  @@itemized = []
  @track_last = 0
  
  def initialize(discount = 0)
    @total = total
    self.total = 0
    @discount = discount
    
    
  end 
  
  def add_item(title, price, quantity = 1)
    self.total = total + price*quantity
    
      @@itemized.fill(title, @@itemized.size, quantity)
      @track_last = price*quantity
     
  end 
  
  def apply_discount
    
  if self.discount == 20
    self.total = total.to_f - (total.to_f * discount.to_f/100)
    return "After the discount, the total comes to $#{self.total.to_i}."
  else 
    return "There is no discount to apply."
  end
  
   end 
   
  def items 
    return @@itemized
     
  end 
  
  def void_last_transaction 
    
    self.total = total - @track_last
    
    
    
  end 
  
  
    
    
end 
