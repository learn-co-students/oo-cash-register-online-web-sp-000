class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
   @discount = discount
   @items = []
end

   def add_item(title, price, quantity = 1)
     price
    if quantity > 1
      self.total += price * quantity
    else
      self.total += price
    end
    quantity.times {@items << title}
    self.last_transaction= price * quantity
   end
   
   def apply_discount
     if @discount  == 0
      "There is no discount to apply."
   else
      @discount = @discount/100.to_f
      @total -= @total * @discount
     "After the discount, the total comes to $#{@total.to_i}."
   end
   end
   def void_last_transaction
     self.total -= self.last_transaction
 end
   
end
