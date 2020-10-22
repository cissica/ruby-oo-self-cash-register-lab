require 'pry'

class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction_amount 
    def initialize(discount = 20)
        @total = 0
        @discount = discount
        @items = []
    end 
    def add_item(title, price, quantity = 1)
        @total += price * quantity
        if quantity>1
            i=0
            while i<quantity
              @items << title
              i+=1
            end
    
          else
            @items << title
          end
          @last_transaction_amount = price * quantity 
    end 
    def apply_discount
        @total = @total * (1-(@discount.to_f/100))
        if @total <= 0
            return "There is no discount to apply."
        else
            return "After the discount, the total comes to $#{@total.to_i}."
        end 

    end 
    def void_last_transaction 
        @total -= @last_transaction_amount
    end 

end 

