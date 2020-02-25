
class CashRegister
  #@cash_register = {}
  #@items = []

  attr_accessor :total, :discount, :items, :last_trans

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items=[]
  end

  def total
    @total
  end
  def add_item (title, price, quantity = 1)
    counter = quantity
    while counter > 0 do
      @items << title
      counter -= 1
    end
    @total += price*quantity
    @last_trans = price*quantity
  end
  def apply_discount
    #discount = number_to_percentage(@discount)
    @total = @total - (@total*@discount/100)
    if @total == 0 || @discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total}."
    end
  end
  def items
    @items
  end
  def void_last_transaction
    @total -= @last_trans
  end

end
