
class Product

  attr_reader :price

  def initialize(name, price)
    @name = name
    @price = price.to_f
  end


end