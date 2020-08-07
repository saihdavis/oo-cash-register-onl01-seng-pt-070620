require "pry"
class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0  
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @price = price 
    @total += price * quantity
  end
  
  def apply_discount
    if @discount > 0
      @discount = (@price * @discount)/100
      @total -= @discount
      @total
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end 
  
end
