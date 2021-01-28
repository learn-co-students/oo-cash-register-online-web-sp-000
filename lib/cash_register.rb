class CashRegister
  attr_accessor :total, :discount, :quantity, :price, :last_item_price  
 
  def initialize(discount= 0)
    @total = 0
    @discount = discount
    @price = price
    @quantity = quantity
    @items = []
    @transactions = []
  end
  
 
  def add_item(item_name, price, quantity = 1)
       self.total += (price * quantity)
       @last_item_price = price * quantity
       i = quantity
       @transactions << price
       until i == 0 do
       @items << item_name
       i -= 1 
     end 
  end 
  
  def apply_discount
      #if discount is 20%
      if discount == 0 
        "There is no discount to apply."
      else 
      self.total -= (0.01 * @discount * @total).to_i
      return "After the discount, the total comes to $#{self.total}."
    end
  end 
  
  def items 
    @items
  end 
  
  def void_last_transaction
    self.total -=@last_item_price
  end 
end 
