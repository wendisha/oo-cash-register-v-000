<<<<<<< HEAD
require "pry"
class CashRegister
  attr_accessor :total, :discount, :all_items, :transaction
    
  def initialize (discount=0)
    @total = 0
    @discount = discount
    @all_items = []
    @transaction = 0
  end
  
  def add_item(title, price, quantity=1)
    quantity.times {@all_items << title}
    @transaction = price * quantity
    @total += @transaction
  end
  
  def apply_discount
    if discount != 0 
      @total = @total.to_f - (@total.to_f * (discount.to_f/100.to_f)).to_f
      "After the discount, the total comes to $#{@total.to_i}."
    else 
      "There is no discount to apply."
    end
  end
  
  def items
    @all_items
  end
  
  def void_last_transaction
    @total -= @transaction
=======
class CashRegister
  attr_accessor :total 
  
  def initialize (discount=0)
    @total = 0
   # @total.apply_discount
  end
  
  def add_item(title, price)
    @total += price
  end
  
  def apply_discount(discount)
    if discount != 0 
      total_with_discount = (@total * discount.to_f) + @total
      puts "After the discount, the total comes to #{total_with_discount}."
    else 
      
  end
  
  def items
  end
  
  def void_last_transaction
>>>>>>> 4843e371db16aa0010808c31d78ab661d124cfb4
  end
end
