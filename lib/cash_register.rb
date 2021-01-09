require 'pry'
class CashRegister
attr_accessor :total, :discount, :items, :prices

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @ITEMS = []
  @PRICES = []
end

def total
  @total
end

def add_item(title,price,quantity = 1)
  # total << title,(price * quantity)
  @total = @total + price*quantity
  @ITEMS += [title]*quantity
  @PRICES += [price]*quantity
end

def apply_discount
  if discount.to_i != 0
    @total = @total*(100-discount)/100
    "After the discount, the total comes to $#{@total}."
  else "There is no discount to apply."
  end
end

def items
@ITEMS
end

def void_last_transaction
  @total -= @PRICES[-1]
  @PRICES.uniq!
  @PRICES.pop
  @ITEMS.uniq!
  @ITEMS.pop
  if @ITEMS == [] || @ITEMS == nil
    @total = 0
  end
end

end
