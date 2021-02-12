class CashRegister
  attr_accessor :total, :discount, :price, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end


  def total
    @total
  end


  def add_item(title, price, qty = 1)
    @price = price*qty
    @items.concat([title]*qty)
    @total = @total + (price*qty)
  end


  def apply_discount
    if @discount > 0
      @take_off = (@total * @discount)/100
      @total = @total - @take_off
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end


  def items
    @items
  end


  def void_last_transaction
    @total = @total - @price
  end




end
