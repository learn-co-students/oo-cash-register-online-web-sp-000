class CashRegister
  attr_accessor :items, :discount, :total, :last_transaction


  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item_title, item_price, item_quantity=1)
    self.total += (item_price * item_quantity)
    item_quantity.times do self.items << item_title
    end
    self.last_transaction = item_price * item_quantity
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def total
    @total
  end

  def void_last_transaction
    @total = @total - last_transaction
  end
end

#1. each register is a new set of transactions
#2. on init, cash register can either take a discount or not (if customer is employee, discount, if not, no discount?)
#3. on init, cash register sets total to 0
#4. adding items increases total for the transaction
#5. items can have different quantities
#6. discount is applied at the end of the transaction
#7. returns error or success messages depending on init status
#8. able to return array of all items scanned
#9. able to void last item scanned
