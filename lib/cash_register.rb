
class CashRegister

  attr_accessor :discount, :total, :items, :last_transaction

def initialize(employee_discount = 0)
  @total = 0
  @discount = employee_discount
  @items = []
end

def add_item(title, price, quantity = 1)
  @total += price * quantity
  quantity.times do @items << title end
    self.last_transaction = price * quantity
end

def apply_discount
  if @discount != 0
    @total = (@total * 0.8)
 return "After the discount, the total comes to $#{@total.to_i}."
 else
   return "There is no discount to apply."
  end
end

def void_last_transaction
@total = @total - @last_transaction
@total
end

end
