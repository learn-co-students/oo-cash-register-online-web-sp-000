
class CashRegister
attr_accessor :total, :discount

def initialize(discount=0)
@total = 0
@discount = discount
@array = []
end

def void_last_transaction
  if @quantity > 1
    @total = @total - (@price * @quantity)
      @quantity.times do
        @array.pop
      end
  else
    @array.pop
    @total = @total-@price
  end
end

def add_item(title, price, quantity=1)
@title = title
@price = price
@quantity = quantity
@total = @total + (@price * @quantity)
    if @quantity > 1
        @quantity.times do
        @array << @title
        end
    else
    @array <<@title
  end
end



def items
@array
end

def apply_discount
  if @discount == 0
  return  "There is no discount to apply."
  else
    @total = @total - (@total*@discount/100)
    return "After the discount, the total comes to $#{@total}."
  end
end

def total
@total
end


end
