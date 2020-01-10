require 'pry'

class CashRegister
  attr_accessor :total, :discount, :last_transaction_total, :last_transaction_items

  ITEMS = []

  def initialize(discount = 0)
    self.delete_all_items
    @total = 0
    @discount = discount
    @last_transaction_total = 0
    @last_transaction_items = []
  end

  def add_item(name, price, quantity = 1)
    @last_transaction_total = @total
    @last_transaction_items = ITEMS
    initial_total = @total
    quantity.times do
      ITEMS << name
      @total += price
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total*self.discount_to_percent
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def discount_to_percent #returns the amount to multiply the total by
    inverse = 100 - @discount
    inverse = inverse.to_f
    inverse = inverse/100
    inverse
  end

  def items
    ITEMS
  end

  def delete_all_items
    ITEMS.clear
  end

  def void_last_transaction
    ITEMS.clear
    @last_transaction_items.each {|item| ITEMS << item}
    @total = @last_transaction_total
  end
end
