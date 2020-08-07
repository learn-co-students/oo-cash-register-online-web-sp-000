class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity, :last_transaction, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @last_transaction = (price * quantity)
    quantity.times do 
      @items << title
    end
    increased_total = self.total + (price * quantity)
    @total = increased_total
  end

  def apply_discount
    if discount > 0
      @total = self.total - (self.total * self.discount/100)
      "After the discount, the total comes to $#{@total}."
     else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = self.total - self.last_transaction
  end

end
