class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity


  def initialize (discount = 0) # We set our discount to zero unless the user decides to input a value.
    @total = 0 # We initialize and set our total to zero.
    @discount = discount # We initialize our discount variable if a value is set.
    @item = [] # We also initialize an array that will hold the name of our products
  end

  def add_item(title, price, quantity = 1)
    @quantity = quantity
    @price = price
    @total += (price * quantity)

    # We also create an 'if/then' statement to account for duplicate items to be accounted for in our item array.
    if quantity > 1
      counter = 0
      while counter < quantity
        @item << title
        counter += 1
      end
    else
      @item << title
    end

  end

  def apply_discount

    if @discount != 0 # Assume total is 100
      discount_total = @total * (discount.to_f/100) # Takes our discount value '20' and converts to 0.2, then performs 100 * 0.2 = 20.
      @total -= discount_total # We take the result as a variable and subtract it from our original total. 100 - 20 = 80.
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end

  end

  def items
    @item # returns our array of titles.
  end

  def void_last_transaction
    @total -= @price * @quantity # takes the last price and quantity entered and subtracts it from the total.
    # Multiplying the quantity accounts for duplicate items
  end

end
