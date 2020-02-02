class CashRegister 
  attr_accessor :total, :items, :discount, :lastBought    
  def initialize(emplDisc=0)
    @total = 0 
    @items = [] 
    @discount = emplDisc 
    @lastBought = [] 
  end 
  
  def add_item(title, price, quantity=1)
    @total += price*quantity 
    quantity.times do 
      @items << title
      @lastBought << (price*quantity)  
    end 
  end 
  
  def apply_discount
    message = ""
    if(@discount == 0)
      message = "There is no discount to apply."
    else 
      @total*=((100 - @discount)*0.01) 
      message = "After the discount, the total comes to $#{@total.round}."
    end 
    message 
  end 
  
  def items 
    @items  
  end 
  
  def void_last_transaction
    @items.pop 
    @total -= @lastBought[-1] 
    @items
  end 
end 
