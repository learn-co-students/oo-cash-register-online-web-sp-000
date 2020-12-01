class CashRegister

  attr_accessor :discount, :total

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title, price, quantity  = 1)
    @title = title
    @price = price
    @quantity = quantity
    @quantity.times { @items << @title }
    @total += @price * @quantity
  end

  def apply_discount
    return "There is no discount to apply." if @discount == 0
    @total = (@total - @total*(@discount.to_f/100)).to_i
    "After the discount, the total comes to $#{@total}."
  end

  def items
    @items
  end

  def void_last_transaction
    if @items == []
      return 0.0
    else
      @quantity.times do
        @items.delete_at(@items.length - 1)
        @total -= @price
      end
    end
  end
end
