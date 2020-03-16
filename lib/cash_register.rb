class CashRegister
  attr_accessor :total, :items, :discount, :price, :last_transaction
  
  def initialize(discount=0)
    @total = 0
    @discount = discount 
    @items = []
  end
    
  def add_item(items, price, quantity=1)
    @price = price 
    @total += price * quantity
    if quantity > 1 
      counter = 0 
      while counter < quantity
      counter += 1 
      @items << items 
      end
    else 
      @items << items
    end
    self.last_transaction = price * quantity
  end 
  
  def apply_discount
      if discount > 0 
        with_discount = price * discount/100
        @total -= with_discount
        "After the discount, the total comes to $#{total}."
      else 
        "There is no discount to apply."
      end 
  end


  def void_last_transaction
    @total -= @last_transaction
  end
  
end
