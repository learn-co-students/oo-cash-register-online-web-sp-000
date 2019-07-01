class CashRegister
  #to call an instance method inside another instance method, we use the self keyword to refer to the instance on which we are operating
  attr_accessor :items, :discount, :total, :last_transaction        #ATTRIBUTES

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []       #set items attribute to an item array
  end

  def add_item(title, amount, quantity = 1)           #quantity must be at least 1 by default
    self.total += amount * quantity
    quantity.times do                    #Iterates the given block quantity (int) times
      items << title                          #add new title of items => to our array @items
    end
    self.last_transaction = amount * quantity             #calculation to keep track of last_transaction instance variable
  end

  def apply_discount               #discount already passed in at initialization
    if discount != 0                #if there is a discount, perform the operatoin below
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i  #call our total object at this instance to update with a discount. 'to_f' is to float, 'to_i' is integer
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction                           #simple equation that removes our last_transaction which is we update in '#add_items'
    self.total = self.total - self.last_transaction
  end
end
