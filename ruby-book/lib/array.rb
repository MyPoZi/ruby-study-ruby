array_dummy = ["abc", false, nil, 4, [1, 2, 3]]
array_dummy << 1.8

# こちらが多い each do
array_dummy.each do |element|
  puts element
end

for element in array_dummy
  puts element
end

