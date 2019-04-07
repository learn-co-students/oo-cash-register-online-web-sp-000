
class CashRegister 
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = {}
  end
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)

    counter = 0
    until counter == quantity
      @items << title
      counter += 1
    end
    @last_transaction["title"] = title
    @last_transaction["price"] = price
    @last_transaction["quantity"] = quantity
  end
  
  def apply_discount
    if discount != 0 
      @total = @total.to_f
      percentage = (100.0 - @discount.to_f) / 100.0
      @total = @total * percentage
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    total_price_of_transaction = @last_transaction["price"] * @last_transaction["quantity"]
    @total = @total - total_price_of_transaction
    
  end
end