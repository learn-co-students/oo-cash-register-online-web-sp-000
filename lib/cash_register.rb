class CashRegister
  attr_accessor :discount, :total, :items, :price, :transaction
  
  def initialize(discount=nil)
  self.total = 0 
  self.discount = discount if discount !=nil
  self.items = []
end 

def add_item(title, price, quantity=1)
  self.transaction = price*quantity
@total += price*quantity
quantity.times do 
 self.items << title
end 
end

def apply_discount
       if discount 
         discount = (100.0 - @discount).to_f / 100
   new_total = (self.total*discount).to_i
         @total = new_total
  pin_pad_reads = "After the discount, the total comes to $#{new_total}."
  else 
    pin_pad_reads = "There is no discount to apply."
end
return pin_pad_reads
end 

 
 def void_last_transaction
   @total -= self.transaction
 end 


end 