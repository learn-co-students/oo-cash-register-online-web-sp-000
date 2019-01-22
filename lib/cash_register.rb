class CashRegister
  attr_accessor :total, :discount

  def initialize(total = 0, discount = nil)
    @total = total
    @discount = discount
  end

  def self.total
    @total
  end

  def add_item

  end

  def apply_discount

  end

end
