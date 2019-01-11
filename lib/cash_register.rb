class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0  
    @discount = discount
    @items = []
    @last_price = 0
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @last_price = price
    while quantity > 0
      @items << title
      quantity -= 1
    end
    
  end
    
  def apply_discount
    if @discount > 0 
      @total -= (@total * (@discount.to_f / 100)).to_i
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= @last_price
    
  end
  
  
end
