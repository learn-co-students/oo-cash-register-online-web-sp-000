class CashRegister
  attr_accessor :total
  
  def initialize(employee_discount = 0)
    @total = 0
    @employee_discount = employee_discount.to_i
    @item_names = []
    @items = {}
  end
  
  def discount
    @employee_discount
  end
  
  def add_item(item, price, quantity = 1)
    @item = item
    i=0
    while i < quantity
      @item_names << @item
      i+=1
    end
    @price = price
    @quantity = quantity
    @items[@item] = [@price, @quantity]
    @total += @price*@quantity
  end
  
  def apply_discount
    if @employee_discount != 0
      @total = @total*0.01*(100-@employee_discount)
      @total = @total.to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @item_names
  end
  
  def void_last_transaction
    item_count = @items.count
    @total -= @items[@item][0]*@items[@item][1]
    @items.delete(@item)
    if item_count == 0
      @total = 0
    end
    @total
  end
end
