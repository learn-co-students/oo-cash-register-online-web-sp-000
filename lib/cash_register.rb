class CashRegister
  attr_accessor :total, :discount, :price, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    puts "init total #{@total}"
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    @price = price * quantity
    @total =  @total.to_f + @price
    quantity > 1 ? @items.fill(title,@items.size, quantity) : @items << title
    puts @items
  end

  def apply_discount
    puts @total
    total = @total.to_f
    discount = @discount.to_f / 100
    reduced = total * discount
    puts "discount #{reduced}"
    if @discount == 0 
      @total = reduced.to_i
     return "There is no discount to apply."
    else
      @total = total - reduced
      puts "total discount #{@total}"
      return"After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= @price
    @items.slice(@items.size - 1)
  end
end
