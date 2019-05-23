require "pry"

class CashRegister
  attr_accessor :total, :title, :quantity, :price, :transaction, :transactions, :discount
  
  def initialize(total=0, discount=20)  
    @total = total
    @discount = discount
    @transactions =[]
  end  
  
  def add_item(title,price, quantity =1)

    self.total += price * quantity
      quantity.times do 
        transactions << title
      end
    self.transaction = price * quantity
  end
  
  
  def apply_discount

    
    self.transaction *= 0.8
  end
  
  
  
  
  
  def items
    @transactions
  end
  
  def void_last_transaction
    
  end
end    
    
    
=begin
 
 describe '#apply_discount' do
    context 'the cash register was initialized with an employee discount' do
      it 'applies the discount to the total price' do
        cash_register_with_discount.add_item("macbook air", 1000)
        cash_register_with_discount.apply_discount
        expect(cash_register_with_discount.total).to eq(800)
      end

      it 'returns success message with updated total' do
        cash_register_with_discount.add_item("macbook air", 1000)
        expect(cash_register_with_discount.apply_discount).to eq("After the discount, the total comes to $800.")
      end

      it 'reduces the total' do
        cash_register.total = 0
        cash_register_with_discount.add_item("macbook air", 1000)
        expect{cash_register_with_discount.apply_discount}.to change{cash_register_with_discount.total}.by(-200)
      end
    end

    context 'the cash register was not initialized with an employee discount' do
      it 'returns a string error message that there is no discount to apply' do
        expect(cash_register.apply_discount).to eq("There is no discount to apply.")
      end
    end
  end
  
=end