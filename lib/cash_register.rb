class CashRegister
  
  attr_accessor :total, :discount, :items,:last_transaction_amount, :price 
  
  
  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end 
  
  
 def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
    end
    @last_transaction_amount = price * quantity
  end
  
  def apply_discount
    if @discount > 0 
      @remove_from_price = (@discount * @total)/100
      @total -=@remove_from_price
      return "After the discount, the total comes to $#{total}."
    else 
      return "There is no discount to apply."
  end 
end
  
   def void_last_transaction()
    @total -= @last_transaction_amount
  end
  
end 
