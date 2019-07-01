class User
  attr_accessor :name, :address, :email
  def initialize(name, address, email)
    @name = name
    @address = address
    @email = email
  end
end

user = User.new("hoge", "東京", "a@a")

puts user.address

class Person
  def initialize(money)
    @money = money
  end

  def billionaire?
    money >= 1000000000
  end

  private

  def money
    @money
  end
end

person = Person.new(100000000000)
# puts person.money # privateのためエラー
puts person.billionaire?