class CashRegister
  attr_accessor :discount, :total

  def initialize(discount=0)
      @discount = discount
      @total = 0
      @items = []
    end
    def add_item(item, price, quantity = 1)
      @sub_total = price * quantity
      self.total += @sub_total
    if quantity > 1
      while quantity > 0
      @items << item
      quantity -= 1
      end
    elsif
      @items << item
    end
  end

  def apply_discount
      if @discount > 0 && total
        self.total = (self.total * ((100.0 - discount.to_f)/100)).to_i
        return "After the discount, the total comes to $#{@total}."
      else
        return "There is no discount to apply."
      end
    end

    def items
      @items
    end

    def void_last_transaction
      self.total = @total-@sub_total
      @total
    end
  end
