require_relative 'group.rb'
require_relative 'product.rb'
require_relative 'user.rb'

#create new users
user1 = User.new("user1")
user2 = User.new("user2")
user3 = User.new("user3")
user4 = User.new("user4")
user5 = User.new("user5")

#create group
group = Group.new("test group")

#add users to the group
group.add_user(user1)
group.add_user(user2)
group.add_user(user3)
group.add_user(user4)
group.add_user(user5)

#create test products
test_product1 = Product.new("test product 1", 10)
test_product2 = Product.new("test product 2", 5)
test_product3 = Product.new("test product 3", 20)

#Users fill in products that need to be shared
user1.share_product(test_product1, group)
user2.share_product(test_product2, group)
user3.share_product(test_product3, group)

group.sort
puts "Overview user balances:\n#{group.to_s} \n"

puts "Overview group payment"
puts group.payment
