class SomeSpecialError < StandardError
  raise '例外が発生しました'
end

class HogeSpecialError < StandardError

end

begin
  do_something
rescue SomeSpecialError => e
  puts "#{e.class}(#{e.message})が発生しました。処理を続行します。"
ensure
  puts "必ず実行したいコード"
end

