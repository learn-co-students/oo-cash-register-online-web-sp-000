class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity, :last_transaction
  @@item_list = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @@item_list.clear
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @quantity = quantity
    @last_transaction = self.price * self.quantity
    @@item_list.concat([@title]*@quantity)
    if @quantity == 1
      @total += @price
    else
      @total += @price * @quantity
    end

  end

  def apply_discount
    total_discount = @total * @discount / 100
    @total -= total_discount
    if total_discount != 0
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @@item_list
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end
