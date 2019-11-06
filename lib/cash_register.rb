class CashRegister
  
attr_accessor :total, :discount


def initialize(discount = 0)
  @total = 0
  @discount = discount
  @@items = []
end

def total
  @total
end

def add_item(title, price, quantity = 1)
  i = 0
  while i < quantity
    @@items << title
    i += 1
  end
  x = (price * quantity)
  @total = @total + x
  @x = x
end

def apply_discount
  if @discount == 0
    return "There is no discount to apply."
  else
    @total = (@total - (@total * (@discount / 100.00)))
    return "After the discount, the total comes to $#{@total.to_i}."
  end
end

def items
  @@items
end

def void_last_transaction
  @total = @total - @x
end

end