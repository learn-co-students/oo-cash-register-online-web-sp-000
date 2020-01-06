# Cash register can:
# Add items of varying quantities and prices
# Calculate discounts
# Keep track of what's been added to it
# Void the last transaction

class CashRegister

  attr_accessor :total, :discount, :last_transaction_item, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  # accepts a title and a price and increases the total
  # also accepts an optional quantity - ("book", 5.00, 3)
  # doesn't forget about the previous total
  def add_item(title, price, quantity = 1)
    cart = []
    cart << self.total = price * quantity

  end

end
