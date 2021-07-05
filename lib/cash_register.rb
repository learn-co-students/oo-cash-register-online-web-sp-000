require 'pry'
class CashRegister

attr_accessor :total, :discount, :items, :price

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(name, price, quantity = 1)
    @total += price * quantity
    @price = price
    items_added = 0
    while items_added < quantity
      @items << name
      items_added += 1
    end
  end

  def apply_discount
    if @discount == 0 then "There is no discount to apply."
    else
    @total = (@total*(1-@discount.to_f/100))
    "After the discount, the total comes to $#{@total.round}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @price
  end
end
