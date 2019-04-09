class CashRegister
  attr_accessor :total, :discount, :items, :pricelist
  def initialize(discount=0)
    @total=0
    @discount=discount
    @items=[]
    @pricelist=[]
  end

  def add_item(item, price,quantity=0)
    if quantity==0
    @total+=price
    @items<<item
  else @total=price*quantity+@total
    counter=0
    while counter<quantity
      @items<<item
      counter+=1
    end
  end
  @pricelist<<price

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
@total=@total-@pricelist[pricelist.size-1]
end



end
