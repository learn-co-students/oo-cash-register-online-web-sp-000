
class CashRegister
  attr_accessor :total, :discount, :items, :transaction

  def initialize(discount = 0.0)
    @total = 0.0
    @discount = discount
    @items = []
    @transaction = 0.0

  end

  def add_item(title, price, quantity = 0)
    total_price = 0
    if quantity > 1
      total_price = price * quantity
      @transaction = transaction + total_price
      @total = total + total_price
      counter = 0
      while counter < quantity
        items << title
        counter += 1
      end
    else
      @total = total + price
      items << title
      @transaction = transaction + total
    end
  end

  def items
    @items
  end

  def apply_discount
    discount_price = 0
    if @discount > 1
      discount_price = total * (discount / 100.0)
      @total = total - discount_price
      "After the discount, the total comes to $#{total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @items.pop
    @total = (@transaction - total).round(2)
  end

end
