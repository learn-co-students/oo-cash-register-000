class CashRegister
  attr_accessor :total, :discount, :items
  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(item, price, qty=1)
    qty.times do
      @items << item 
    end
    @total += price * qty
    @last_transaction = [item, price, qty]
  end

  def apply_discount
    @total = @total - @total * @discount.to_f / 100
    if @discount != 0
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_transaction[1]
  end
end
