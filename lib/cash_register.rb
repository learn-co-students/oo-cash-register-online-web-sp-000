class CashRegister
  attr_accessor :total, :discount, :quantity, :price, :items, :last_total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @price = price
    @quantity = quantity
    @items = []
    @transactions = []
  end

  def add_item(title, price, quantity = 1)
      quantity.times do 
        @items << title
      end 
      @last_total = @total
      @total += price * quantity
    end 
      
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      self.total -= (0.01 * @discount * @total).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end

 def void_last_transaction 
   @total = @last_total
 end 
 
end