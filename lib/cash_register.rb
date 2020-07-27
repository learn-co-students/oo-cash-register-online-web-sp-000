class CashRegister
  attr_accessor :total, :discount, :items, :price
  def initialize(discount=0)
    @total=0
    @discount=discount
    @items= []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      items << item
    end
    @price = price * quantity
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    elsif @total -= @total * @discount/100
      return "After the discount, the total comes to $#{@total}."
    else
      nil
    end
  end

  def void_last_transaction
    @total = @total-@price
  end


end
