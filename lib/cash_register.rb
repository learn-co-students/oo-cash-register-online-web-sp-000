class CashRegister
attr_accessor :discount, :total, :last_transaction_amount, :items, :misc

def initialize(discount = 0)
  @discount = discount
  @items = []
  @total = 0
end

def add_item(item, price, quantity = 1)
      if quantity>1
        i = 0
        while i<quantity
          @items<<item
          i +=1
        end
      else
        @items << item
      end
      @total += (price*quantity)
      @last_transaction_amount = @total
  end

def apply_discount
    factored_discount = @discount/100.to_f
    if discount > 0
      @total = @total - (@total*factored_discount)
    "After the discount, the total comes to $#{@total.to_i}."
    else
   "There is no discount to apply."
    end
end

    def void_last_transaction()
      @total -= @last_transaction_amount
    end
end
