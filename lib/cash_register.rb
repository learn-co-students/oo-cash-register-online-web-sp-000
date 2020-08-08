class CashRegister

  def initialize(discount = 0)
    @previousTotal = 0
    @total = 0
    @discount = discount
    @items = []
  end

  attr_accessor :total, :discount

  def add_item(itemName, price, quantity = 1)
    @previousTotal = @total
    thisPrice = price * quantity
    @total += thisPrice
    i = 0
    while (i < quantity)
      @items << itemName
      i += 1
    end
  end

  def apply_discount
    if (@discount == 0)
      return "There is no discount to apply."
    end
    discountDecimal = (@discount.to_f) * 0.01
    multiByThis = 1.0 - discountDecimal
    @total = @total.to_f * multiByThis
    if (@total % 1.0 == 0)
      @total = @total.to_i
    end
    return "After the discount, the total comes to $#{@total}."
  end

  def items
    @items
  end

  def void_last_transaction
    lastIndex = items.length - 1
    @items.delete_at(lastIndex)
    @total = @previousTotal
  end

end
