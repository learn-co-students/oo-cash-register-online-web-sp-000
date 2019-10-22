class CashRegister
    attr_accessor :total :discount
  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount
  end

  def total
    @total
  end
