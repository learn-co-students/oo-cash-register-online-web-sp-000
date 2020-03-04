class CashRegister
  attr_accessor :total, :discount

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    @lastPrice = price
    @lastQuantity = quantity

    @total += @lastPrice * @lastQuantity
    @lastQuantity.times { @items << item }
  end

  def apply_discount
    return "There is no discount to apply." if discount == nil
    @total = @total * (100 - discount) / 100
    return "After the discount, the total comes to $#{@total}."
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @lastPrice * @lastQuantity
    @lastQuantity.times { @items.pop }
  end
end
