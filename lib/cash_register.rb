require 'pry'
class CashRegister

  attr_accessor :discount, :total, :previous_total, :items, :previous_quantity


  def initialize(dicount=0)
    @total = 0
    @discount = dicount
    @items = []
  end


  def add_item(item_title, price, quantity=1)
    quantity.times do
      self.items << item_title
    end
    self.previous_total = self.total
    self.total += price * quantity
    self.previous_quantity = quantity
  end

  def apply_discount
    if self.discount == 0
      return "There is no discount to apply."
    else
      discount_decimal = 20.to_f / 100
      amount_dicounted = self.total * discount_decimal
      self.total = (self.total - amount_dicounted).to_i
      return "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.items = self.items.slice(0, self.items.size - self.previous_quantity)
    # print self.items
    if self.items.size == 0
      self.total = 0.0
    else
      @total = self.previous_total
      @total
    end
  end

end
