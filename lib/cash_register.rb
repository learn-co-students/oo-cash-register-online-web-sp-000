class CashRegister
  require 'pry'
  attr_accessor :discount, :total, :add_item, :items, :prices, :last_transaction

  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end
  
  
  def self.total(amount)
  end
  
  
  def add_item(title, price, quantity = 1)
    @last_transaction = price * quantity
    @prices << price
    quantity.times do
    @items << title
end
    @total = @total + (price * quantity)
  end
  
  def apply_discount
    @total = self.total * (100- @discount)/100
     if @discount == 20
     "After the discount, the total comes to $#{@total}."
   else
    "There is no discount to apply."
   end
  end
  
  def self.items
   @items
 end
 
 def self.prices
   @prices
 end
 
 def void_last_transaction
   @total = @total - self.last_transaction
 end
 
end

