require 'pry'

class CashRegister
  attr_accessor  :total, :discount, :title, :quantity, :price 

   
  
  def  initialize(discount = 0)
    # binding.pry 
    @total = 0
    @discount = discount
    @items_array = [] ## need @instance variable that clear with each new CashRegister instance
  end

  def add_item(title, price, quantity = 1)
    @total =  @total + (price*quantity)
 
    Array.new(quantity, title).each do |item|
      @items_array << item
    end
    
    @price = price
  end 

  def apply_discount
    
    if discount != 0
      @total = @total - (@total*(@discount.to_f*0.01))
        return "After the discount, the total comes to $#{@total.to_i}."  ##Anti-pattern: another way to return? set a variable to the string return variable ## doesn't work if variable is declared before calculation, it returns the old value, not discount value 
    elsif discount == 0
       "There is no discount to apply."
    end
  end 

  def items 
    @items_array
  end 
    
  def void_last_transaction
    ## take the last item in the items array and delete the price from the total
    @total = @total - @price 
    
  end 

end 
=begin   
  describe '#void_last_transaction' do
    it 'subtracts the last transaction from the total' do
      cash_register.add_item("tomato", 1.76)
      expect{cash_register.void_last_transaction}.to change{cash_register.total}.from(1.76).to(0.0)
    end
  end
=end 