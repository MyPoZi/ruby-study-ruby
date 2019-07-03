class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

user1 = User.new("佐藤")
user2 = User.new("鈴木")
user3 = User.new("山田")

users = [user1, user2, user3]

names = users.map do |user|
  user.name
end
p names

names = users.map {|user| user.name}
p names

names = users.each { |user| user.name }
p names

names = users.map(&:name)
p names
