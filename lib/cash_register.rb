class CashRegister
  attr_accessor :total , :discount , :quantity
  
  def initialize(discount = 1)
    @total = 0
    @discount = discount
    [] << @total 
    [] << @title
  end 
  
  
  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @quantity = quantity
    
    self.total = @price * @quantity
    
      
  end 
  
  def apply_discount
    if @discount > 1 
    new_price = @discount * @total
      puts "After the discount, the total comes to $#{new_price}"
    else 
      puts "There is no discount to apply."
    end 
  end
  
  def items 
    @title
  end 
  
end 