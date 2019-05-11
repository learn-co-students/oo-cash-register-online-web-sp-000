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
    discount = (price * quantity)/100
    @total -= discount
  end

end
