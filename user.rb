require_relative 'product.rb'
require_relative 'group.rb'

class User
  attr_accessor :balance
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 0
  end

  def share_product(product, group)
    price = product.price
    @balance = @balance + price
    shared_amount = price / group.size
    group.users.each do |user|
      user.balance = user.balance - shared_amount
    end

  end

  def pay
    @balance = 0.0
  end


end