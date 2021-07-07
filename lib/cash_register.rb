class CashRegister
  attr_accessor :items, :price, :discount, :total

  def initialize(discount=0)
    @total=0
    @items=[]
    @discount=discount
  end

  def add_item(name, price, quantity=1)
    if quantity>1
      count=0
      while count<quantity
        @items<<name
        count+=1
      end
    else
      @items<<name
    end
    @total += price * quantity
    @transaction=@total
    @total
  end

  def apply_discount
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end


  def void_last_transaction
    @total -= @transaction
  end

end
