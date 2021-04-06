class CashRegister

  attr_accessor :total, :discount, :items, :transactions

  def initialize(discount = 0)
    @items = []
    @discount = discount
    @total = 0
    @transactions = []
  end

  def add_item(title, price, quantity = 1)

    

    transaction = quantity * price

    @total += transaction
    @transactions << transaction

    quantity.times do
      
      items << title
    end
  end

  def apply_discount
    
    if discount != 0
      @total -= @total * (@discount/100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

def void_last_transaction
  
  @total -= @transactions.pop
end



end
