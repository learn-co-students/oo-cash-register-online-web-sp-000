class CashRegister
  attr_accessor :items, :total, :discount
  def initialize(discount = 0)
    @discount = discount
    @items = []
    @total = 0
  end
  def total
    @total
  end
  def add_item(title, price, quantity = 1)
    quantity.times {@items << title}
    @last_price = price * quantity
    @total += price * quantity
  end
  def apply_discount
    if (@discount == 0)
      return "There is no discount to apply."
    else
      @total = @total.to_f - (@total.to_f * (@discount.to_f / 100.0))
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  def void_last_transaction
    @total = @total.to_f - @last_price
    return @total
  end
end
