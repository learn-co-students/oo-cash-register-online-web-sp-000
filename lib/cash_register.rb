class CashRegister
  attr_accessor :total, :discount, :last_item, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantitiy = 1)
    @total += price*quantitiy
    quantitiy.times do
      @items << title
    end
    @last_item = price*quantitiy
  end

  def apply_discount
    if @discount>0
      @total -= @total * (@discount/100.to_f)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @items.delete_at(-1)
    @total = @total - @last_item
  end
end
