class CashRegister
  attr_accessor :discount,:total,:items

  def initialize(discount=0)
    @discount=discount
    @total=0
    @items=[]
  end

=begin
  def add_item(title,price,quantities=nil)
    if quantities!=nil
      @total+=price*quantities
    else
      @total+=price
    end
    @items<<title
  end
=end
  def add_item(title,price,quantities=1)
    @total+=price*quantities
    quantities.times do
     @items<<title
    end
    @last_transaction=price*quantities
  end


  def apply_discount
    if @discount!=0
      @total=@total*((100.0-@discount.to_f)/100)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end

  end

  def void_last_transaction
    @total=@total-@last_transaction

  end

end
