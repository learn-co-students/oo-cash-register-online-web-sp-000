class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction_price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction_price = 0
  end

  def add_item(title, price, quantity = 1)
    @total = @total + (price * quantity)
    quantity.times { self.items << title }
    @last_transaction_price = price * quantity
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total * (100-@discount) / 100
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    #The last item = @items[-1]
    #remove add_item (the last item)
    @total = @total - @last_transaction_price
  end 
end
