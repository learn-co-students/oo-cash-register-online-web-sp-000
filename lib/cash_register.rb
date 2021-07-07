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
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end
  def void_last_transaction
    @total -= @price
  end
end
