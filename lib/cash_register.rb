class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0, total = 0)
    @total = total
    @discount = discount
    @items = []
    @last_item = ""
    @last_price = 0.0
    @last_quantity = 0

  end

  def add_item(item, price, quantity = 1)
    @last_item = item
    @last_price = price
    @last_quantity = quantity
    @total += price * quantity
    for i in 1..quantity
      @items << item
    end
  end

  def apply_discount
    if @discount != 0
      output_string =
        "After the discount, the total comes to $#{(@total *= (100-@discount).to_f/100).to_i}."
    else
      output_string = "There is no discount to apply."
    end
    output_string
  end

  def void_last_transaction
    if @last_quantity != 0
      @total -= @last_quantity * @last_price
      @items.pop
    end
  end
end
