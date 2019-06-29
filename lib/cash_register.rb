class CashRegister

  attr_accessor :total, :discount, :items


  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @last_trans = quantity ? @total += price * quantity : @total += price
    # @title = title
    @quantity = quantity
    
    # if quantity
    #   count = 0
    #   while count < quantity
    #   @items << title
    #   count += 1
    #   end
    # else
    #   @items << title
    # end
    
    # refactored
      count = 0
      while count < quantity
        @items << title
        count += 1
      end
  end

  def apply_discount
    if @discount
      @total = (@total - (@total * (@discount * 0.01))).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end  

  def void_last_transaction
    @total = @total - @last_trans
  end
end
