class CashRegister

  attr_accessor :total, :discount, :items, :price


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @price = []
  end

  def add_item(title, price, quantity = 1)
    self.price << (price * quantity)
    self.total += (price * quantity)
      quantity.times do items << title

    end
  end

  def apply_discount()
    self.discount = self.discount.to_f/100
    self.total = self.total - self.total*self.discount
    if self.total != 0
      return "After the discount, the total comes to $#{total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.price[-1]
    if self.items == []
      self.total = 0.0
    els
    end
  end



end
