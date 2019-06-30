class CashRegister
  
  attr_accessor :total, :discount, :item, :price, :quantity
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    @total += price*quantity
    @item = item
    @price = price
    @quantity = quantity
  end  
  
  def apply_discount
    #applying discounts --> turn discount into decimal value --> multiply the total and discount to determine the amount to be removed --> subtract the amount to be removed from the current total 
    if @discount != 0 
      discount = (100-@discount)/100.0
      @total = @total*discount
      return "After the discount, the total comes to $#{@total.to_i}."
    else 
      "There is no discount to apply."
    end  
    
  end
  
  def items
    #need to access items being passed in add_item method
    items = []
    self.add_item(@item, @price)
    items << @item 
    
    items
  end  
end  