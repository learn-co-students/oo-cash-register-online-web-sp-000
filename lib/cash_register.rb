class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    if quantity > 1 
      i = 0 
      while i < quantity
        @items << item 
        i += 1 
      end
    else 
      @items << item
    end
    
    @last_transaction = price*quantity
    @total += price*quantity
    @total
    
  end
  
  def apply_discount 
    if @discount > 0 
      @discount = @discount/100.to_f
      @total -= @total * @discount
      return "After the discount, the total comes to $#{@total.to_i}."
    else 
      return "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    last_item = @items.pop
    @total -= @last_transaction
  end
    
  
end
