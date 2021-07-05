class CashRegister
  attr_accessor :total, :discount, :last, :last_cost
  attr_reader :list

  def initialize(disc = 0)
    @total = 0
    @discount = disc
    @list = []
    @last = []
  end

  def add_item(item, cost, qt = 1)
    qt.times do
      @list << item
      @last << item
    end
    cost *= qt
    @last_cost = cost
    @total += cost
  end

  def apply_discount
    @total *= 0.01*(100-@discount)
    if discount != 0
      return "After the discount, the total comes to $#{@total.truncate}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    return @list
  end

  def void_last_transaction
    @total -= @last_cost
    if @last.length == 1
      @list.delete(last)
    else
      @last.each {|x| @list.delete(x)}
    end
  end
end
