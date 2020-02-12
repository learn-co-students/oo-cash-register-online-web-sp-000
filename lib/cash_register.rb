class CashRegister

      attr_accessor :total, :discount, :items

def initialize(discount=0)
  @total = 0
  @discount = discount
  @items = []

end

def add_item (title, price, optional_quantity = 1)

  self.total += price * optional_quantity
  optional_quantity.times do

    #collecting items in an array to display them..  Hmm.  @items?
end

def apply_discount
if
self.total = (total * ((100.0 - discount.to_f)/ 100)).to_i

#"After the discount, the total comes to $800

return "After the discount, the total comes to $#{@total}."
else

  return "There it no discount to apply."

end
end
end
