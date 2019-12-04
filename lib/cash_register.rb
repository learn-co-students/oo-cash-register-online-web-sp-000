class CashRegister
  attr_accessor :total, :discount, :items, :previous_total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @previous_total = @total
    if quantity > 1
      @total += (price * quantity)
      quantity.times do
        @items << title
      end
    else
      @total += price
      @items << title
    end
  end

  def apply_discount
    if @discount > 0
      @discount = (@discount / 100.00) * @total
      @total -= @discount
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @previous_total
  end
end
