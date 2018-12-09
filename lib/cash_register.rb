
class CashRegister
  attr_accessor :total, :discount
  
  @@items = []
  
  def initialize(discount=nil)
    @total = 0
    @discount = discount
  end
  
  
  def add_item(title,price,quantity=1)
    previous_total = @total
    self.total += price*quantity
    @@items << title
  end
  
  def apply_discount
    
    if @discount != nil
            dis = 100 - @discount 

    
    new_total = (@total * dis) / 100
    @total = new_total
    
    return "After the discount, the total comes to $#{@total}."
    
    else 
    return "There is no discount to apply."
    end
  
  end
  
  def items
    
    @@items
    
  end 
  
  
  
  
end