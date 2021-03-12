
class CashRegister
  
  attr_accessor :total, :discount, :total, :last_item, :items

  def initialize(discount = nil)
    @total = 0.0
    @items = []
    if discount
      @discount = discount
    else
      @discount = 0.0
    end
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    last_item = {:title => title, :priced => price, :quantity => quantity}
    @total += last_item[:priced] * quantity
    @items << last_item
  end
  
  def apply_discount
    return "There is no discount to apply." if discount == 0
    discount = (@total * (@discount.to_f / 100.0))
    @total = @total - discount
   "After the discount, the total comes to $#{@total.to_i}."
  end
  
  def items
    items = []
    @items.each do |hash|
      hash[:quantity].times do
        items << hash[:title]
      end
    end
    items
  end
  
  def void_last_transaction
    @total = @total - (@items.last[:priced] * @items.last[:quantity])
    @items.pop
  end
end
    