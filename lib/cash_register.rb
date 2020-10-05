class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @last_total = self.total
    self.total += price * quantity
    quantity.times do
      self.items << title
    end

  end

  def apply_discount
    self.total -= (self.total * @discount.to_f/100).to_i
    if @discount != 0
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @last_total
  end

end
