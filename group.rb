require_relative 'user.rb'

class Group

  attr_reader :users

  def initialize(name)
    @name = name
    @users = []
  end

  def add_user(user)
    @users.push(user)
  end

  def size
    @users.length
  end

  def sort
    @users.sort! {|x,y| x.balance <=> y.balance}
  end

  def to_s
    string = ""
    @users.each do |user|
      string = string + "#{user.name} balance = #{user.balance}\n"
    end
    string
  end

  #Defines which user needs to pay which amount to which other user
  def payment
    i = 0
    j = -1
    while(@users[i] != @users[j])
      if (@users[i].balance * -1) <= @users[j].balance
        puts "#{@users[i].name} pays #{@users[i].balance * -1} to #{@users[j].name}"
        @users[j].balance = @users[j].balance - (@users[i].balance * -1)
        @users[i].balance = 0.0
        i = i + 1
      else
        puts "#{@users[i].name} pays #{@users[j].balance} to #{@users[j].name}"
        @users[i].balance = @users[i].balance + @users[j].balance
        @users[j].balance = 0.0
      end
      if @users[j].balance == 0.0 && @users[i] != @users[j]
        j = j - 1
      end
    end
  end

end


