class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end

  def add_item(title, price, quantity = 1)
    @last_transaction = price * quantity
    @total += @last_transaction
    save_items(title, quantity)
  end

  def apply_discount
    if @discount.nil?
      "There is no discount to apply."
    else
      @total = @total - (@total * (@discount.to_f/100))
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total -= @last_transaction    
  end
  private

  def save_items(title, quantity)
    until quantity == 0
      @items << title
      quantity -= 1
    end
  end
end
