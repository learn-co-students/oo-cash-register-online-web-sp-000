require 'pry'

class CashRegister

  attr_accessor :total, :discount, :price, :item, :last_trans


  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @price = price
    @total += (price * quantity)
    @last_trans = (price * quantity)
       #self.total += (price * quantity)
    #self.last_trans = self.total
    ### Same as doing
    ###@total += (price * quantity)
    #@items << title
    quantity.times {@items << title}
  end


  def apply_discount
    #binding.pry
    @total = @total - @discount * 10
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
    @total = @total -= @last_trans
  end

end
