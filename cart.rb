require './product.rb'

class Shopping_Carts

  def initialize
    @cart = []
  end

  def add_to_cart (new_product, price)
    new_product = Products.new(new_product, price)
    @cart << new_product
    @cart
  end
end
