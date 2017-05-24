class Products

  attr_accessor :name, :price
  attr_reader :tax_rate
  def initialize(name, price)
    @name = name
    @price = price
    @tax_rate = 0.08
  end

  def tax
  @after_tax_price = (@price * @tax_rate) + @price
  end
end
