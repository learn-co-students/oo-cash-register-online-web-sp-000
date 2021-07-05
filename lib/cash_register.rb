class CashRegister
  attr_accessor :total, :discount

  def initialize(discount= 0)
    @total = 0
    @discount = discount
    @item = []
  end


  def add_item(title, price, quantity= 1)
    quantity.times {@item << title}
    @total += price * quantity

    @price = price
    @quantity = quantity
  end

  def apply_discount
    if discount > 0
      @total = @total *0.8
      @total = @total.to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @item
  end

  def void_last_transaction
    self.total -= @price
  end

end
