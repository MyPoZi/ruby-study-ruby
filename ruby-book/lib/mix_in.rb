# おしゃべり能力
module Chatting
  def chat
    "hello"
  end
end

# 泣く能力
module Weeping
  def weep
    "しくしく"
  end
end

class Human
  include Chatting
  include Weeping
end

human = Human.new
puts human.chat
puts human.weep

class Tax
  def self.rate
    1.08
  end
end

module PriceHolder
  def total_price
    price * Tax.rate
  end

  def price
    raise NotImplementedError
  end
end

class Product
  include PriceHolder

  attr_accessor :price
end

class OrderedItem
  include PriceHolder

  attr_accessor :unit_price, :volume

  def price
    unit_price * volume
  end
end
puts "----taxクラスメソッド-----"
puts Tax.rate

puts "----order-----"
order = OrderedItem.new
order.unit_price = 100
order.volume = 2
puts order.price
puts order.total_price

puts "----product-----"
product = Product.new
product.price = 100
puts product.total_price
