class CashRegister
  attr_accessor :total, :discount, :items, :price, :quantity, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount || 0
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @last_transaction = price * quantity

    @total += @last_transaction

    quantity.times do
      @items << item
    end
    # @items.concat(quantity.times.map{item})
    # @items.concat([item] * quantity)
  end

  def apply_discount
    if @discount > 0
      discount_percent = @discount / 100.0
      @total -= (@total * discount_percent)
      "After the discount, the total comes to $#{total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end