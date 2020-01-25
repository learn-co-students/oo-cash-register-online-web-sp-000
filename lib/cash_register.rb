class CashRegister

attr_accessor :discount, :total, :title, :last_item
@@items = []

def initialize(discount = nil)
  @total = 0
  @discount = discount
  @@items.clear
end

def add_item(title, price, quantity = 1)
  @title = title
  @total += (price*quantity)
  @price = price
  @quantity = quantity
  @quantity.times{@@items << @title}
  @last_item = @price*@quantity
end

def apply_discount
  if @discount == nil
      return "There is no discount to apply."
  else
   self.total= self.total*((100-@discount.to_f)/100)
   return "After the discount, the total comes to $#{self.total.to_i}."
 end
end

def items
  @@items
end

def void_last_transaction
  @total -= @last_item
end


end
