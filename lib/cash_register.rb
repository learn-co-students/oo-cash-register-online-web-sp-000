class CashRegister

  attr_accessor :total, :discount, :last_added_cost

  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @item_list = []
    @last_added_cost = 0
  end

  def total
    @total
  end

  def add_item(item, cost, quantity = 1)
    quantity.times {@item_list << item}
    @total = @total + (cost*quantity)
    @last_added_cost = cost*quantity #as this is overwritten with every new item, this will store correctly
  end

  def apply_discount
    if @discount > 0
      actual_discount = @total/100 * @discount
      @total = @total - actual_discount
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    return @item_list
  end

  def void_last_transaction
    @total = @total - @last_added_cost
  end

end
