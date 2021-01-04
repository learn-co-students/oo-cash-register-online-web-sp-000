require "pry"
class CashRegister

  attr_accessor :total, :discount, :items, :price_list

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = [ ]
    @price_list = [ ]
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 0)

    if quantity == 0
      @items << title
      @price_list << price
      @total += price * (quantity + 1)
    else
      quantity.times { @items << title }
      quantity.times { @price_list << price}
      @total += price * quantity
    end
  end

  def apply_discount
  #  binding.pry
    if @discount != 0
      decrease_by = (@total*@discount/100.0).to_i
      @total -= decrease_by
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    #binding.pry
  #  @items
  #  @price_list

    i = @items.length
    while i > 0
      last_item = @items.pop
      last_item_price = @price_list.pop
      if @items.last == last_item
        @total -= last_item_price
        i -= 1
        @total
      else
        @total -= last_item_price
        @total
        break
      end
    end
    @total
  end

#  if @price_list.length == 0
#    @total = 0.0
#  else
#    @total = @total - last_item_price
#  end



end
