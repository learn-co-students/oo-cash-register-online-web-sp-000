require 'pry'

class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      @items << title
    end
      @item_total = price * quantity
      @total += @item_total
  end

  def apply_discount
    cal_dis = @total * @discount.to_r / 100
    cal_int = cal_dis.to_i
    @total = @total - cal_int

      if @discount == 0
        "There is no discount to apply."
      else
        "After the discount, the total comes to $#{@total}."
      end
  end

  def items
    @items
  end


  def void_last_transaction
    @total -= @item_total
  end



end
