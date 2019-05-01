class CashRegister
  attr_accessor :total, :discount, :items, :trans_total
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  def add_item (item, price, quantity = 1)
    @trans_total = (price*quantity)
    @total += @trans_total
    while quantity > 0
      (@items||=[]) << item
      quantity -= 1
    end
  end
  def apply_discount
    if !(discount == 0)
      @total = @total - (@total*discount/100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  def void_last_transaction
    @total -= @trans_total
  end
end
