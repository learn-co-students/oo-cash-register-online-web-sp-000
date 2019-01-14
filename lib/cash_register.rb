require "pry"
class CashRegister
  
  attr_accessor :total, :discount , :items_list, :last_trans
  
  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items_list = []
    @last_trans = 0
  end
  
  def total
    @total
  end
  
  def add_item (title, price, num = 1)
    @total = @total + (price * num)
    i = 0
    while i < num
      @items_list << title
      i += 1
    end
    if num == 1
      @last_trans = price * num
    end
  end
  
  def apply_discount
    @total = @total - (@total * (@discount/100.00)).to_i
    if @total != 0
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items_list
  end
  
  def void_last_transaction
    @total = @total - @last_trans
  end
  
end
