number = [1, 2, 3, 4, 5]
new_number = number.map {|n| n * 10}
even_number = number.select {|n| n.even?}
puts new_number
puts even_number
