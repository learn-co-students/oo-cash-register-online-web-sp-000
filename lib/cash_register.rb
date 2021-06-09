class CashRegister
  attr_reader :discount, :items
  attr_accessor :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @last_total = @total
    @total += price * quantity
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    @total -= (@total * @discount.to_f / 100).to_i
    if @discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total = @last_total
  end
end
