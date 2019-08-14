class CashRegister
  attr_accessor :total, :discount, :price, :items
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quant = 1)
    @price = price * quant
    @total += @price
    quant.times {@items << item}
  end

  def apply_discount
    if discount > 0
      @to_apply = (@total * @discount)/100
      @total -= @to_apply
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @price
  end
end
