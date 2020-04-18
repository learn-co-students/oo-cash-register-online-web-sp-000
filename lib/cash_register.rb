class CashRegister
  attr_accessor :discount, :total
  @total
  @items
  @last_transaction

  def initialize(discount = nil)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(title,price,quantity=1)
    @items.fill(title, @items.size, quantity)
    @last_transaction = price*quantity
    @total += @last_transaction
  end

  def apply_discount
    if @discount
        @total = @total*((100.0-@discount.to_f)/100.0)
        "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    if @items.length > 1
      @total -= @last_transaction
    else
      @total = 0.0
    end
  end

end
