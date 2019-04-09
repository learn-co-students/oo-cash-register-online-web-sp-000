class CashRegister
  attr_accessor :total, :discount, :items, :pricelist
  def initialize(discount=0)
    @total=0
    @discount=discount
    @items=[]
    @pricelist=[]
  end

  def add_item(item, price,quantity=1)

  @total=price*quantity+@total
   quantity.times do
      @items<<item
    end
  @pricelist<<price*quantity
  @last_transaction=price*quantity
  #it will update everytime a new thing get added, saving the work to use the pricelist as in the last statement because
  #we only need the number of last_transaction, not the whole pricelist, if we want to void more than one transaction, then we will need that array type pf solution

end

def apply_discount
  if self.discount==0
    "There is no discount to apply."
  else @total=@total*(1-discount/100.0)
    "After the discount, the total comes to $#{@total.to_i}."
end
end


def items
 @items
end

def void_last_transaction
  #find the last item's price and subtract it
#@total=@total-@pricelist[pricelist.size-1]
@total-=@last_transaction
end



end
