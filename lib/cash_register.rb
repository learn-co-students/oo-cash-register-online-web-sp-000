class CashRegister

attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def add_item(title, price, quantity = 1)
    item_info = {}
    item_info[:name] = title
    item_info[:price] = price
    item_info[:quantity] = quantity

    @cart << item_info
    @total = @total + (price * quantity)
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total -= @total * @discount / 100
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    items = []
    @cart.each do |item_info|
      for qty in 1..item_info[:quantity]
        items << item_info[:name]
      end
    end
    items
  end

  def void_last_transaction
    x = @cart.last[:price]
    @total -= x
    @cart.pop

    if @cart == []
      @total = 0
    end
  end

end
