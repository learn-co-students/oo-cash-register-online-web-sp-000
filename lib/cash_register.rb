class CashRegister
  
  attr_accessor :total, :discount, :price, :quantity
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @price = price
    @items = []
    @transaction = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
      until quantity == 0 do
        @items << title
        quantity -= 1
      end
    @transaction << price
  end
  
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      self.total -= (self.total * discount * 0.01).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    self.total = @total - @transaction.pop
    if @transaction == []
      self.total = 0.0
    end
  end
  
  
end