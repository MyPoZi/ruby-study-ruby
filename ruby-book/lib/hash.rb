options1 = {"font_size" => 100, "color" => 'red'}
options2 = {"font_size": 100, color: 'red'}
options3 = {:font_size => 100, :color => 'red'}
options4 = {font_size: 100, color: 'red'} # 最も利用される

puts options1["font_size"]
puts options2[:font_size]
puts options3[:font_size]
puts options4[:font_size]


options1.each(&method(:puts))
options1.each do |value|
  puts value
end