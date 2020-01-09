class CashRegister

attr_accessor :discount, :total, :items, :last_price, :last_quanity



  def initialize(discount = 0)
    @total = 0
    @discount = discount * 1.0
    @items = []
    @last_quanity = 0
    @last_price = 0
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    items.concat(Array.new(quantity, title))
    self.last_price = price
    self.last_quanity = quantity
  end

  def apply_discount
    if discount != 0
    then self.total = total - (total * discount / 100.0)
    "After the discount, the total comes to $#{self.total.to_i}."
    else
    "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.items.pop(@last_quanity)
    self.total -= @last_price * @last_quanity
  end


end
