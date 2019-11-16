
class CashRegister
  attr_accessor :total, :items, :transaction, :discount



  def initialize(discount = 0)
    #set instance variable @total to zero
    #take optional employee discount
    @total = 0
    @items = []
    @discount = discount
    #@transaction = []
  end


  def add_item(name, price, number=1)
    @number = number
    @price = price
    @total += price.to_f * number
    if number > 1
      i=0
      while i < number
        @items << name
        i+=1
      end
    else
      @items << name
    #  @transaction <<
    end
  end

  def apply_discount()
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
       "After the discount, the total comes to $#{@total.to_i}."
    else
       "There is no discount to apply."
    end
  end

  def void_last_transaction()
    @total -= (@price * @number)
    @total

  end


end
