class CashRegister
  attr_accessor :total, :discount, :quantity, :items, :tally


  def initialize(discount = 0)
    @total = 0
    self.discount = 20
    @@items = []
    @@tally = []
  end

  def add_item(title, price, quantity = 1)
      @total += price * quantity
      @@items.fill(title, @@items.size, quantity)
      @@tally << (price * quantity)
  end

  def apply_discount
    if @total == 0
      return "There is no discount to apply."
    else
      @total *= 0.8
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @@items
  end

  def void_last_transaction
    @@items.pop
    @@tally.pop
    @total = @@tally.inject(0){|sum,x| sum + x }
  end

end
