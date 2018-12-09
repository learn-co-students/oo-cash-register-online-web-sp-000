require 'pry'




class CashRegister
  attr_accessor :total, :discount, :items, :transactions, :count
  

  
  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
    @transactions = {}
    @count = 0 
  end
  
  
  def add_item(title,price,quantity=1)
    
    previous_total = @total
    self.total += price*quantity
    if quantity == 1 
      @items << title
    else
      quantity.times do
      @items << title
      end
    end
  
    @transactions[@count +1] = {title: title, price: price, quantity: quantity, total: price*quantity}
    
    @count += 1 
    
  
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
    @items
  end 
  
  def void_last_transaction
    
   last = @transactions[@count][:total]
   
   new_total = @total - last
   
   @total = new_total
   

  end
  

  
end