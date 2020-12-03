class CashRegister
  attr_accessor :total 
  attr_accessor :transaction_list
  attr_accessor :discount

  def initialize(discount = 0)
    @total = 0.0 
    @transaction_list = []
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    quantity.times do
      @total += price
      @transaction_list.push(
          {
            :item => item,
            :price => price,
            :quantity => quantity
          }
        )
    end
  end
  
  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    end
    @total *= ((100.0-@discount)/100.0)
    return "After the discount, the total comes to $#{@total.round}." 
  end
  
  def items
    out = []
    @transaction_list.each do |entry|
      out.push(entry[:item])
    end 
    return out
  end
  
  def void_last_transaction
    if(transaction_list.length > 0)
      @total -= @transaction_list.last[:price]*@transaction_list.last[:quantity]
      @transaction_list.pop
    end
  end
end 