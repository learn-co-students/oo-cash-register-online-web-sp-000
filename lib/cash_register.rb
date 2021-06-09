class CashRegister

  attr_accessor :total, :last_transaction
  attr_reader :discount, :shopping_cart, :items

#when the cash register starts up it detaults to add 3 instance variables
#total is 0 (nothings been added) discount def 0 (unless other value given)
#instantiates an empty shopping cart array, because thats the right word,
#I dont care what the test says, the @items line is to get around the test

  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @shopping_cart = []
    @items = @shopping_cart
  end

#for each quantity of item push that item into the shopping_cart (see told you)
#once thats done multiply the price and quantity to get the last transaction total
#add this new total to the current @total
  def add_item (item, price, quantity = 1)
    quantity.times do
      @shopping_cart << item
    end
    @last_transaction_total = price * quantity
    @total += @last_transaction_total
  end

#find the amount total of the given discount, subtract it from the total to get
#a total with discount
  def apply_discount
    discount_total = (@total * @discount / 100)
    @total = @total - discount_total
    if @total > 0
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

#removes last transaction from the total, in case you didnt want that tomato
  def void_last_transaction
   @total -= @last_transaction_total
 end


 #how about a quantity sensitive void_last_transaction??
 # def better_void_last(price)
 #   puts "Please enter the number items you wish to remove?"
 #   quantity_remove = gets.chomp
 #   total_to_remove = quantity_remove * price
 #   @total -= total_to_remove
 # end
      
end
