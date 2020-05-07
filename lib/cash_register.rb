class CashRegister
  attr_accessor :total, :discount, :price, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, amount = 1)
    @price = price
    @total += price * amount
    @item_num = amount
    i = 0
    for i in 1..amount do
      @items << item
      i += 1
    end

  end

  def apply_discount
    if @discount != 0
      @savings = (price * discount)/100
      @total -= @savings
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @price * @item_num
  end
end
