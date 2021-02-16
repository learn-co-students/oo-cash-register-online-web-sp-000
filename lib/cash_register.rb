class CashRegister
attr_accessor :total, :discount, :last_transaction

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
end

def total
  @total
end

def add_item(title, price, quantity = 1)
  quantity.times do
  @items << title
end
  @last_transaction = (price * quantity)
  @total += (price * quantity)
end

def apply_discount
  if @discount == 0
    return "There is no discount to apply."
  end
  @total -= @total * @discount / 100
  return "After the discount, the total comes to $#{@total}."
end

def items
  @items
end

def void_last_transaction
  @total -= @last_transaction
end

end
