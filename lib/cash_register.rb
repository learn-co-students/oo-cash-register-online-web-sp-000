class CashRegister
  #creates only the reader method for discount and items - you can only read the value of the discount & items but cannot change it 
  attr_reader :discount, :items
  #creates both the reader and writer method for total - you can read and change the value of the total 
  attr_accessor :total
  
  
  #optionally taken in a discount on iniitialzation - set the default to 0 
  def initialize(discount = 0)
    #set the instance variable, total, to 0. 
  @total = 0
  @discount = discount
  #create an empty array to store the items in 
  @items = []
  end   
 
 #pass in title, price, and make quantity optional with a default of 1 
  def add_item(title, price, quantity = 1)
    #run through the quantity number however many times it says - each time there is a new item, add the title into the item array 
    quantity.times do 
      @items << title 
    end 
    #create a way to define the prior total before adding in the item 
    @prior_total = @total 
    #create the current total by ADDING to the prior total, add price * quantity
    @total += price * quantity
  end   
  
  
  def apply_discount
    #take the current total and subtract the disount equation
    #discount equation = (total x discount % / 100)
    #.to_f = to float 
    #.to_i = to int - after the equation is done transform it into an integer 
      @total -= (@total * @discount.to_f / 100).to_i
      #if the discount is not 0 (aka, there is a discount), write out the discount total 
     if discount != 0
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end   
  end   
 
 #convert the current total to the previous total 
  def void_last_transaction
     @total = @prior_total 
  end 

end 
