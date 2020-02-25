
class CashRegister
  #@cash_register = {}
  #@items = []

  attr_accessor :total, :discount, :items, :last_trans

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items=[]
  end

  # def total
  #   @total
  # end
  def add_item (title, price, quantity = 1)
    counter = quantity
    while counter > 0 do
      @items << title
      counter -= 1
    end
    self.total += price*quantity
    self.last_trans = price*quantity
  end
  def apply_discount
    #discount = number_to_percentage(@discount)
    self.total = self.total - (self.total*self.discount/100)
    if self.total == 0 || self.discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total}."
    end
  end
  # def items
  #   @items
  # end
  def void_last_transaction
    self.total -= self.last_trans
  end

end
