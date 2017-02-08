class CashRegister

  attr_accessor :total
  attr_reader :discount

  def initialize(discount = 1)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantitiy = 1)
    @total += price * quantitiy
    quantitiy.times do @items << title end
  end

  def apply_discount
    if @discount == 1
      "There is no discount to apply."
    else
      @total -= @total * @discount/100
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

end
