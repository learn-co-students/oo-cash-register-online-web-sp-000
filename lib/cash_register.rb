require 'pry'
class CashRegister

  attr_accessor :total, :discount, :item_list, :item_price

  def initialize(discount = 0)
    @item_list = []
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    new_price = price * quantity
    @item_price = new_price
    @total += new_price
    @item_list.fill(item, item_list.size, quantity)
  end

  def apply_discount
    # binding.pry
    if @discount == 0
      "There is no discount to apply."
    else
      new_total = @total * (@discount.to_f / 100)
      @total -= new_total.to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @item_list
  end

  def void_last_transaction
    @total -= @item_price


    if @total == 0.0
      @item_list = []
    end
  end

end
