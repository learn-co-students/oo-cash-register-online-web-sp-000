
class CashRegister
    attr_accessor :total, :items,:item, :quantities, :price
  def initialize(percentage = 0)
     @percentage = percentage
     @total = 0
     @items = ""
  end
  def discount
    @percentage
  end
  def add_item(item, price, quantities = 1)
    items = self
    items.item = item
    items.price = price
    items.quantities = quantities
    items
    quantities.times{|i| @items += " #{item}"
  }
    @total += price * quantities
   end
  def apply_discount
  discount_total = total * discount / 100
    @total -= discount_total
    if discount == 0
     "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total}."
    end
  end
  def items
    @items.split(" ")
  end
  def void_last_transaction
  @total -= self.price * self.quantities
  end
end
