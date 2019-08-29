class CashRegister
  
  attr_accessor :total, :discount, :last_transaction, :items, :price
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @price = price
    if quantity > 1 
      counter = 0 
      while counter < quantity
        @items << title
        counter += 1 
      end
    else
      @items << title 
    end
    @total += price * quantity
    @last_transaction = @price * quantity
    @total
  end
  
  def apply_discount
    if @discount > 0 
      @saved = (price * discount)/100.to_f 
      @total -= @saved
      p "After the discount, the total comes to $#{@total.to_i}."
    else
      p "There is no discount to apply."
    end
  end
  
  def void_last_transaction
      @total -= @last_transaction
  end
  
  
  
  
end
