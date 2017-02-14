class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        cost = price * quantity
        self.total += cost
        self.last_transaction = cost
        quantity.times do
            self.items << title
        end   
    end

    def apply_discount
        if discount > 0 
            self.total = self.total * (100-self.discount)/100
            "After the discount, the total comes to $#{self.total}."
        else 
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end
end
