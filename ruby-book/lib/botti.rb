class UserN
  def name
    "名前"
  end
end

user = UserN.new
puts user.name

object = nil
p object&.name # nil レシーバがnilであった場合でもエラーにならない

p object.name # error


################
# 全て同じ。safe navigation operatorを使うと簡潔に
name = if object
         object.name
       else
         nil
       end
name = object ? object.name : nil
name = object&.name
################