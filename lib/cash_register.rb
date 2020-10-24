class CashRegister

  attr_accessor :total, :discount, :item_total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times {@cart << title}
    @item_total = price * quantity
    @total += item_total
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
    @total -= @total * @discount / 100
    "After the discount, the total comes to $#{total}."
  end

  def items
    @cart
  end

  def void_last_transaction
    @total -= @item_total
  end

end
