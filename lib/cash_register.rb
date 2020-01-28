class CashRegister

attr_accessor :discount, :total, :last_item
@@items = []

def initialize(discount = nil)
  @total = 0
  @discount = discount
  @@items.clear
end

def add_item(title, price, quantity = 1)
  @total += (price*quantity)
  quantity.times{@@items << title}
  @last_item = price*quantity
end

def apply_discount
  if @discount == nil
      return "There is no discount to apply."
  else
   @total= @total*((100-@discount.to_f)/100)
   return "After the discount, the total comes to $#{@total.to_i}."
 end
end

def items
  @@items
end

def void_last_transaction
  @total -= @last_item
end


end
