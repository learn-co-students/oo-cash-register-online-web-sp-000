class CashRegister

  attr_accessor :items, :price, :discount, :total, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @total += @price * quantity
    @items << [item] * quantity
    @last_transaction = @price * quantity
  end

  def total
    @total
  end

  def apply_discount
    if @discount > 0
      @total = @total * (100 - @discount) / 100
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items.flatten
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
