range = 1..5 # 5を含む
range2 = 1...5
puts range.include?(5)
puts range2.include?(5)
puts range2.include?(4.999999)

a = [1, 2, 3, 4, 5]
puts a[1..3]
puts a[3]

def charge(age)
  case age
  when 0..5
    0
  when 6..12
    300
  when 13..18
    600
  else
    1000
  end
end

puts charge(5)
puts charge(12)
puts charge(16)
puts charge(25)

p (1..5).to_a
p ('a'..'e').to_a
p ('bad' .. 'bag').to_a
