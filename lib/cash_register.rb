class CashRegister

attr_accessor :total, :discount, :items


def initialize(emp_discount = 0.0)
  @total = 0.0
  @previous_total = 0.0
  @discount = emp_discount
  @items = []
end


def total
 return @total
end


def add_item(title, price, qty = 1)
  @previous_total = @total
  qty.times do
    @items << title
    @total += price
  end
end


def apply_discount
  if @discount > 0.0
    discount = @total*(@discount / 100.0)
    @total = @total - discount
    return "After the discount, the total comes to $#{@total.to_i}."
  else
    return "There is no discount to apply."
  end
end

def void_last_transaction
  @items.pop
  if @items.empty?
    @total = 0.0
  else
    @total = @previous_total
  end

end
#
# def
# end
#
# def
# end
#
# def
# end
#
# def
# end

end
