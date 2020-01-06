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
    @items = []
  end

  # accepts a title and a price and increases the total
  # also accepts an optional quantity - ("book", 5.00, 3)
  # doesn't forget about the previous total
  #   it "doesn't forget about the previous total" do
      # cash_register.add_item("Lucky Charms", 4.5)
      # expect(cash_register.total).to eq(4.5)
      # cash_register.add_item("Ritz Crackers", 5.0)
      # expect(cash_register.total).to eq(9.5)
      # cash_register.add_item("Justin's Peanut Butter Cups", 2.50, 2)
      # expect(cash_register.total).to eq(14.5)
  def add_item(title, price, quantity = 1)
    @items << self.total = price * quantity
    @items
  end

end
