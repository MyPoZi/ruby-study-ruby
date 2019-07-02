# 価格のあるもの を抽象化したクラス
class PricedObject
  TAX = 1.08
  def total_price
    price * TAX
  end

  def price
    raise NotImplementedError
  end
end

class Product < PricedObject
  attr_accessor :price
end

class OrderedItem < PricedObject
  attr_accessor :unit_price, :volume

  # 税抜き単価 * 数量
  def price
    unit_price * volume
  end
end

order_item = OrderedItem.new
order_item.unit_price = 180
order_item.volume = 2
puts order_item.total_price

product = Product.new
product.price = 1000
puts product.total_price

class BaseTask
  def puts_message
    puts "BaseTask のタイトル"
  end
end

class Task < BaseTask
  def puts_message
    super
    puts "Task のタイトル"
  end
end

puts Task.new.puts_message