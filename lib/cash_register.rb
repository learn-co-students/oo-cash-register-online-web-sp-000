require 'pry'
 class CashRegister

  attr_accessor :total, :discount, :items, :last_total

  def initialize(discount=0)
    @total = 0.0
    @last_total = 0.0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title,price,quantity=1)
  @items.fill(title,@items.size,quantity)
  @last_total = @total
  @total += price*quantity
  end

  def apply_discount
    if @discount > 0
      @total = @total - @discount / 100.0 * @total
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @last_total
  end
end
