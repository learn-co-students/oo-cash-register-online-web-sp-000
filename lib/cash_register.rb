class CashRegister
#i could have done this better with hashes that hold each item and quantity but meh, i passed all the tests and need to go to sleep soon
attr_accessor :total, :discount



def initialize (discount = 0)
@total = 0
@discount = discount
@items = Array.new
end

def total
@total
end

def add_item (title, price, quantity = 1)
quantity.times {@items << title}
@cost = price * quantity
@total += @cost
end

def apply_discount
  if @discount == 0
    return "There is no discount to apply."
  else
minus = @total * @discount / 100
@total = @total - minus
return "After the discount, the total comes to $#{@total}."
end
end

def items
@items
end

def void_last_transaction
@total = @total - @cost
@items.pop
end

end
