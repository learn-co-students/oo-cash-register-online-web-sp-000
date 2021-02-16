class CashRegister
attr_accessor :total, :discount, :last_transaction

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
end

def total
  return @total
end

def add_item(title, price, quantity = 1)
  item_info = Hash.new(0)
  item_info[:title] = title
  item_info[:price] = price
  item_info[:quantity] = quantity

  @items << item_info

  @total += (price * quantity)

  @last_transaction = @items[-1][:price]
end

def apply_discount
  if @discount == 0
    return "There is no discount to apply."
  end
  @total -= @total * @discount / 100
  return "After the discount, the total comes to $#{@total}."
end

def items
  total_items = Array.new(0)
  @items.each do |item_info|
    for quantity in 1..item_info[:quantity]
    total_items << item_info[:title]
    end
  end
total_items
end

def void_last_transaction
@items.pop(1)
@total -= @last_transaction

  if @items.size == 0
    @total = 0.0
  end
end

end
