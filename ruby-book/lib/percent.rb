ary1 = ['apple', 'banana', 'orange']
p ary1 # ["apple", "banana", "orange"]

ary2 = %w(apple banana orange)
p ary2 # ["apple", "banana", "orange"]


ary3 = [:apple, :banana, :orange]
p ary3 # [:apple, :apple, :banana, :orange]

ary4 = %i(apple apple banana orange)
p ary4 # [:apple, :apple, :banana, :orange]
# ハッシュのapple２つ同じオブジェクトID
puts ary4[0].object_id # 1032668 apple
puts ary4[1].object_id # 1032668 apple
ary4[0] = :hoge
p ary4
puts ary4[0].object_id # 1033948 hoge
puts ary4[1].object_id # 1032668 apple