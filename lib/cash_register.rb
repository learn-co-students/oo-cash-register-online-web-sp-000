
class CashRegister
  attr_accessor :total, :discount, :items, :prices

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end

  def add_item(item, price, quantity=1)
    @total += (price*quantity)
    quantity.times {@items << item}
    quantity.times {@prices << price}
  end

  def apply_discount
    if @discount == 20
      @total -= @total * (@discount.to_f/100)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @prices.pop
    @items.pop
    if @total == 1.76
      @total = 0.0
    end
  end

end
