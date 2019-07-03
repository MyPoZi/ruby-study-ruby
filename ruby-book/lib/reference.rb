a = "hello"
b = "hello"
c = b

# メソッド名に m! のように明示した方が破壊的メソッドと分かりやすい
def m(d)
  # !を付けることで、dを破壊的に変更できる
  d.upcase!
end


m(c)

puts a
puts b
puts c
