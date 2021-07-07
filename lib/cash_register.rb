class CashRegister
  attr_accessor(:total, :discount, :items)

  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = [ ]
  end
  
  def total
    self.total
  end
  
  def add_item(title, price, quantity = 1)
    self.total = self.total + price*quantity
    self.items << title
  end
  
  def apply_discount
    if  self.discount == true
      @total = @total - @total*@discount
      puts "After the discount, the total comes to #{@total}."
    else puts "There is no discount to apply."
    end 
  end
  
  def items
    self.items
  end
end