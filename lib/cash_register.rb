class CashRegister
  attr_accessor :total, :discount
  
  def initialize(total = 0, *employee_discount = 20)
    @total = total
    @employee_discount = employee_discount
    @item_names = []
    @items = {}
  end
  
  def add_item(item, price, quantity = 1)
    @item = item
    @item_names << @item
    @price = price
    @quantity = quantity
    @items[@item] = [@price, @quantity]
    @total += @price*@quantity
  end
  
  def apply_discount
    if @employee_discount == true
      new_total = @total*0.80
      puts "After the discount, the total comes to #{new_total}"
      @total = new_total
    else
      puts "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    item_count = @items.count
    @total -= @items[@item][0]*@items[@item][1]
    @item_names.pop
    @items.delete(@item)
    if item_count == 0
      @total = 0
    end
    @total
  end
end
