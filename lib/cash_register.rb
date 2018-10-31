
class CashRegister
  attr_accessor :total, :discount, :last_total, :items


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @last_total = []
    @items = []
  end

  def save_last
    self.last_total << self.total
  end

  def add_item(title, price, num = 1)
    num.times do
      self.items << title
    end
    self.save_last
    self.total += price*num
  end

  def apply_discount
    if self.discount != 0
      self.save_last
      self.total = self.total*(1.0-self.discount/100.0)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.last_total[-1]
    self.last_total.delete_at(-1)
    self.total
  end
end
