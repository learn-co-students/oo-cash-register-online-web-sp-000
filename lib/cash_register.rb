class CashRegister

  attr_accessor :discount, :items, :total
  
  @@LIST = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    quantity.times do 
      self.items << item
    end
    hash = {
      "item" => item,
      "price" => price,
      "quantity" => quantity
      }
    @@LIST << hash
  end
    
  
  def apply_discount
    self.total = (self.total - ((@discount/100.0) * self.total))
    if @discount == 0 
      return "There is no discount to apply."
    end
    if self.total % 1 == 0
      return "After the discount, the total comes to $#{self.total.floor}."
    end
    return "After the discount, the total comes to $#{self.total}."
  end


  def void_last_transaction
    last_item = @@LIST.pop 
    self.total = self.total - (last_item["price"] * last_item["quantity"])
    self.items.pop
  end

end
