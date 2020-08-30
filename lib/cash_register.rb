class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction, :last_total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      @items << title
    end
    @last_total = @total
    self.total += (price * quantity)
  end

  def apply_discount
    self.total -= total * discount / 100.0
    if discount == 0
      "There is no discount to apply."
    else
        "After the discount, the total comes to $#{total.to_i}."
    end
  end

  def void_last_transaction
    self.total = @last_total
    if @items == []
      self.total = 0.0
    end
  end
end
