require './product.rb'

class Shopping_carts

  attr_accessor :cart
  def initialize
    @cart = []
  end

  def add_to_cart(name, price)
    new_product = Products.new(name, price)
    @cart << new_product
    new_product
  end

  def remove_from_cart(product_name)
    @cart.each do |product|
      if product_name == product.name
        @cart.delete(product)
      end
    end
    @cart
  end

  def before_tax_total
    total = 0
    @cart.each do |product|
      total += product.price
    end
    total
  end

  def after_tax_total
    total = 0
    @cart.each do |product|
      total += product.tax
    end
    total
  end

end

cart1 = Shopping_carts.new

puts cart1.inspect

cart1.add_to_cart("mop", 15)
cart1.add_to_cart("broom", 15)

puts cart1.inspect

cart1.remove_from_cart("mop")

puts cart1.inspect

cart1.add_to_cart("broom", 15)

puts cart1.before_tax_total

puts cart1.after_tax_total
