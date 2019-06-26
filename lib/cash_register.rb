class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=nil)
    @total=0
    @discount=discount
    @items=[]
  end

  def add_item(item, price, quantity=nil)
    @last_transaction=[item, price, quantity]
    if quantity==nil
      @total += price.to_f
      @items<<item
    else
      @total += price.to_f*quantity
      quantity.times {@items<<item}
    end
  end

  def apply_discount
    if @discount==nil
      "There is no discount to apply."
    else
      @total=@total*(1-@discount.to_f/100)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    last_trans_item=@last_transaction[0]
    last_trans_price=@last_transaction[1]
    last_trans_quantity=@last_transaction[2]
    if last_trans_quantity==nil
      @items.pop
      @total-=last_trans_price
    else
      @items.pop(quantity)
      @total-=last_trans_price.to_f*quantity
    end
  end



end
