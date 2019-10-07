require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items
  @@transactions = []
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
end

def total
  return @total
end



def add_item(item, price, qty = 1)
  @@transactions << [item, price, qty]
  counter = 1
    while counter <= qty
    @items << item
    counter += 1
end
  prev_total = @total
    new_addition = price * qty
    @total = prev_total + new_addition
  @total
end

def apply_discount
  if @discount > 0
      discount_amount = ((@discount.to_f / 100) * @total)
      new_total = (@total - discount_amount)
      @total = new_total.to_i
    return "After the discount, the total comes to $#{@total}."
  else
    return "There is no discount to apply."
  end
end

def void_last_transaction
  counter = @@transactions[-1][2]
    while counter >= @@transactions[-1][2]
    @items.pop
    counter -= 1
  end
  prev_total = @total
    new_subtraction = (@@transactions[-1][1]).to_f * (@@transactions[-1][2]).to_f
    @total = prev_total - new_subtraction
    @@transactions.pop
  @total
end

def items
  @items
end

end