require 'pry'

class CashRegister
  attr_accessor :cash_register, :cash_register_with_discount, :total, :discount, :items



  def initialize(discount = 0)
    @total = 0
    @items = Array.new
    @discount = discount
  end

  def add_item(title, price, quantity = 1)

    @total += price * quantity
    purchase = {}
    purchase[:food] = title
    purchase[:price] = price
    purchase[:quantity] = quantity
    @items << purchase

  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = (@total * (100 - @discount) * 0.01).to_i
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    all_items = []
    @items.each do |purchase|
      purchase[:quantity].times {all_items << purchase[:food]}
    end
    all_items
  end

  def void_last_transaction
    last_item = @items.pop
    @total -= last_item[:price] * last_item[:quantity]
  end

end
