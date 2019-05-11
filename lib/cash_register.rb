class CashRegister
  attr_accessor :total, :discount, :cost, :item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
    end
  end
  def apply_discount
    if discount > 0
      @amount_off = (@price * discount)/100
      @total -= @amount_off
      "With the discount your total comes to #{@total}."
    else
      "There is no discount"
    end
  end
end
