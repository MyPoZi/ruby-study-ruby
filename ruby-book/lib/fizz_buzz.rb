def fizz_buzz(n)
  if n % 15 == 0
    'Fizz Buzz'
  elsif n % 3 == 0
    'Fizz'
  elsif n % 5 == 0
    'Buzz'
  else
    n.to_s
  end
end

# p fizz_buzz(1)
# p fizz_buzz(2)
# p fizz_buzz(3)
# p fizz_buzz(4)
# p fizz_buzz(5)
# p fizz_buzz(15)
# puts fizz_buzz(4)
# puts fizz_buzz(15)
# a = puts fizz_buzz(4)
# a
# b = p fizz_buzz(4)
# b
# p 'abc'.class
# p 2 / 3r
#
# require 'Date'
# p Date.today