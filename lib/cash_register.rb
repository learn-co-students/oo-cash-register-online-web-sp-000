class CashRegister
  attr_accessor :total, :discount, :items, :last_item_price

  def initialize(employee_discount = nil)
    @total = 0
    @items = []
    @last_item = {}
    @discount = employee_discount
  end

  def add_item(title, price, quantity = 1)
    self.total =+ self.total + price * quantity
    quantity.times do
      self.items << title
    end
    self.last_item_price = quantity * price
  end

  def apply_discount
    self.total = self.discount == nil ? self.total : self.total - (self.total * self.discount/100)
    if(self.discount != nil)
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total =+ self.total - self.last_item_price
  end

end
