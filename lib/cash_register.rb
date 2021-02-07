class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      @items << item
    end
    self.last_transaction = price * quantity
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total.to_f*((100.0-@discount.to_f)/100.00)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end


end
