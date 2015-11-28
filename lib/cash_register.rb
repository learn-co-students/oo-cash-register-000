require 'pry'
class CashRegister

  attr_accessor :total, :discount, :items, :transactions

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @transactions = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      @items << title
    end
    hash = {}
    new_price = price
    hash[title] = price
    hash.each do |k,v|
      @transactions << v
    end
    
    if quantity > 1
      new_price = (quantity * price)
    end
    @total += new_price
  end

  def apply_discount
    if discount != 0
      new_price = (discount.to_f / 100) * total
      @total -= new_price
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @transactions.pop 
  end
end
