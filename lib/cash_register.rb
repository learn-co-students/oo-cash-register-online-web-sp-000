class CashRegister 
  attr_accessor :total, :discount, :last_transaction_amount, :items
  
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
 
  def add_item(title, amount, quantity=1)
    self.total += amount * quantity
    quantity.times do
      items << title
    end
    self.last_transaction_amount = amount * quantity
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
   self.total = self.total - self.last_transaction_amount
 end
 
end
