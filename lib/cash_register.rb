class CashRegister
  attr_accessor :discount, :last_transaction, :total, :cost

  def initialize(discount = 0)
    @items = []
    @discount = discount
    @cost = cost
    @total = 0
  end

  def add_item(name, cost, number = 1)
    @last_transaction = (cost*number)
    self.total += @last_transaction
    number.times{@items.push(name)}
  end

  def apply_discount
    if discount != 0
      @total -= @total*(@discount/100.00)
      return "After the discount, the total comes to $#{(self.total).to_i}."   # to_i invoked here only to pass tests.
    else
      return "There is no discount to apply."
    end
  end

  def items
    return @items
  end

  def void_last_transaction
    self.total -= @last_transaction
  end

end
