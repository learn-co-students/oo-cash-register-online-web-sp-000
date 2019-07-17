class CashRegister
  
  attr_accessor :total, :discount, :transaction, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times do
    items << title
  end
    @transaction = price * quantity
  end

  def apply_discount
    if discount != 0
     @total -= (@total / 100) * @discount.to_i
      "After the discount, the total comes to $#{@total}."
    else
    "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= transaction
  end

end