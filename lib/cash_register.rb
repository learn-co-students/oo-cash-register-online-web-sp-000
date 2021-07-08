class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @price = price
    quantity.times{@items << item}
    @total += price * quantity
  end

  def apply_discount
    if @discount > 0
      @total = (@total - @discount.to_f / 100 * @total).to_i
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @price
  end


end
