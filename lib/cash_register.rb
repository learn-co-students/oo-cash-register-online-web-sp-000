class CashRegister

  attr_accessor :total, :discount, :item, :transaction,:name, :price, :payment

  def initialize(discount=0)
    @total=0
    @discount=discount
    @item=[]
    @name=[]
    @payment=[]
    @transaction=[]
  end

  def add_item(name, price, quantity=1)
    @quantity=quantity
    @name<<name.split(" ") * quantity
    @price=price
    @total+=@price * @quantity
    @payment<<@total
    @transaction.push(name,@price, @total)
  end

  def apply_discount
    @total
    @total=@total-(@total * @discount/100)
    @total
    if @discount>0
      return "After the discount, the total comes to $#{@total}."
    else @discount==0
       return "There is no discount to apply."
    end
  end

  def items
    @name.flatten
  end

  def void_last_transaction
     @total-=@price * @quantity
  end

end

#new_register=CashRegister.new
#new_register.add_item("tomato", 1.76,2)
#new_register.void_last_transaction


#a=[1,2,3,4,5,6,7,8,9,10,11]
#a.pop
#a

#a

#a-b


#a.slice!(-2..-1)

#class CashRegister

#  attr_accessor :total, :discount, :item, :transaction,:name, :price, :payment

#  def initialize(discount=0)
#    @total=0
#    @discount=discount
#    @item=[]
#    @name=[]
#    @transaction=[]
#    @payment=[]
#  end

#  def add_item(name, price, quantity=1)
#    @quantity=quantity
#    @name<<name.split(" ") * quantity
#    @price=price
#    @total+=price * @quantity
#    @payment<<@total
#    @transaction.push(name,@price, @total)
#  end

#  def void_last_transaction
#    @payment.pop
#    @payment
#  end

#end

#new_register=CashRegister.new
#new_register.add_item("apple", 0.99)
#new_register.add_item("tomato", 1.76)
#new_register.void_last_transaction
