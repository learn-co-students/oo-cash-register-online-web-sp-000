class CashRegister
  attr_accessor :total, :discount, :last_transaction, :items

  # When initializing, set the total to 0 and the items to an
  # empty list. Also, if no discount is given, make the discount zero.
  def initialize(discount = 0)
    @total = 0.0
    @discount = discount
    @items = []
  end

  # When adding an item to the transaction, increase the total amount
  # by the item's price times its quantity. Hold on to this amount being
  # added to the total (as the @last_transaction instance variable).
  # Also, put in the item name(s) into the array (depending on the quant)
  def add_item(title, price, quantity = 1)
    @last_transaction = price * quantity
    @total += @last_transaction
    quantity.times {@items << title}
  end

  def apply_discount
    if discount != 0
      discount_float = @discount/100.0
      @total -= (@total * discount_float)
      total_int = @total.to_i
      "After the discount, the total comes to $#{total_int}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
