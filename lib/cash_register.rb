class CashRegister
  attr_accessor :total, :discount, :previous_total, :items
  
  
 def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def total 
    @total
  end 
  
  def add_item(item, price, quantity = 1)
    quantity.times do 
      @items << item
    end 
    
    @total += (price * quantity)
    @previous_total = @total 
    @total 
  end 
  
  def apply_discount
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total -= @previous_total
  end
    
end 
