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


end
