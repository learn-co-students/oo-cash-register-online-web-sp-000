class CashRegister
  attr_accessor :total, :last_transaction 
  attr_reader :discount, :items 
  
  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item (item, price, quantity = 1)
    quantity.times do
      @items << item
    end
    @last_transaction = price * quantity
    @total += @last_transaction
  end
  
  def apply_discount
    @total = @total - (@total * @discount / 100)
    if @total > 0
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total -= @last_transaction
  end
  
end
