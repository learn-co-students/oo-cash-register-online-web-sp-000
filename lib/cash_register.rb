class CashRegister

  attr_accessor :total, :discount, :items, :price, :quantity

  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item (title, price, quantity = 1)
    @price = price
    @quantity = quantity
    quantity.times { @items << title }
    @total += price *quantity

  end

  def apply_discount
    if @discount > 0
      @total = @total * (100-discount) / 100
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= (@price * @quantity)
    if @total == 0
      @total.to_f
    else
      @total
    end
  end

end
