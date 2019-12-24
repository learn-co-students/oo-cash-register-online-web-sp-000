class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @last_transaction = price * quantity
    @total = @total + @last_transaction
    i = quantity
    until i == 0 do
      @items << item
      i -= 1
    end

  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total -= (0.01 * @discount * @total).to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = @total - @last_transaction
  end


end
