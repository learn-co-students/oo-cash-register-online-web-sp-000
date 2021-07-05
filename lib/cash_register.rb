class CashRegister

  attr_accessor :total, :discount, :title, :all_items, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @all_items = []
  end

  def add_item(title, price, quantity = nil)
    @title = title
    if quantity
      @total += price * quantity
      @last_transaction = price * quantity
      quantity.times{self.items << title}
    else
      @total += price
      @last_transaction = price
      self.items << title
    end
  end

  def apply_discount
    if discount
      @total = @total * 80 / 100
      return "After the discount, the total comes to $#{@total}."
    end
    return "There is no discount to apply."
  end

  def items
    @all_items
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
