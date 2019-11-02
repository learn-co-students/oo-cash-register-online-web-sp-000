class CashRegister
  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

# add_item method accepts parameters of item, price, and quantity. Sets the total to the current total + price * quantity. Then adds the item to the items array as many times as the quantity value. Finally it sets the last_transaction tot he price * quantity of the last item.
  def add_item(title, amount, quantity = 1)
    self.total += amount * quantity
    quantity.times do
      items << title
    end
    self.last_transaction = amount * quantity
  end

# apply_discount method applies the discount given to the total and displays it in a message, if there is no discount it displays a message that there is no discount to apply.
  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f) / 100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

#  void_last_transaction method voids the last transaction by setting the total to the total minus the last_transaction.
  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end
