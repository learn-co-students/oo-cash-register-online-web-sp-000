class CashRegister

      attr_accessor :total, :discount, :items, :last_transaction

        def initialize(discount=0)
            @total = 0
            @discount = discount
            @items = []

        end

          def add_item (title, price, optional_quantity = 1)

            self.total += price * optional_quantity
            optional_quantity.times do

    #collecting items in an array to display them..  Hmm.  @items?
            items << title
          end


            def apply_discount
              if discount != 0
                self.total = (total * ((100.0 - discount.to_f)/ 100)).to_i

#"After the discount, the total comes to $800

              return "After the discount, the total comes to $#{self.total}."
            else

              return "There is no discount to apply."

            end


            def void_last_transaction
                self.total = self.total - self.last_transaction
            end
end
end
end
