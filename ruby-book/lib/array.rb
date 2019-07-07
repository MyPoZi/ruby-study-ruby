array_dummy = ["abc", false, nil, 4, [1, 2, 3]]
array_dummy << 1.8

# こちらが多い each do
array_dummy.each do |element|
  puts element
end

for element in array_dummy
  puts element
end

a = [1]
b = [2, 3]
p a + b

c = [1, 2, 3]
d = [3, 4, 5]
p c | d
p c - d
p c & d

require 'set' # setクラスは効率的に集合を扱える
e = Set.new([1, 2, 3])
f = Set.new([3, 4, 5])
p e | f
p e - f
p e & f

puts "## 多重代入"
g, *h = 100, 200, 300
p g
p h

puts "## splat展開"
i = []
j = [2, 3]
i.push(1)
i.push(*j)
p i

puts "## 可変長引数"
def greeting(*names)
  p names.join('と')
end

greeting('田中', '鈴木', '佐藤')

puts "## split"
p 'Ruby'.chars
p 'Ruby,Java,Perl,PHP'.split(",")

puts "## 参照"
p x = Array.new(5, 'default')
p str = x[0]
str.upcase!
p x # 同じ文字列オブジェクトを参照しているため、全てDEFAULTになる

p y = Array.new(5) { 'default '} # ブロックで渡すと各要素は別々の文字列を参照する
p str = y[0]
str.upcase!
p y

puts "# with_index"
dimensions = [
    [10, 20],
    [30, 40],
    [50, 60]
]
dimensions.each_with_index do |(index, width), i|
  puts "#{i}, #{index}, #{width}"
end


