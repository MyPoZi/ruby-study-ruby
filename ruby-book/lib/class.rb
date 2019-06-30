class User
  def name=(name) # =で属性をオブジェクトにセットするような形のメソッドを定義できる
    @name = name # インスタンス変数
  end

  def hoge a # 引数取る形になる
    @hoge = a
  end

  def hoge
    @hoge
  end

  def name
    @name
  end
end

class AccessorUser
  attr_accessor :name, :address, :email # ゲッターとセッターを用意してくれる。上と同じ。
end

user = User.new
user.name = 'hoge_name'
puts user.name

accessor_user = AccessorUser.new
accessor_user.address = "東京"
puts accessor_user.address
puts accessor_user.email, accessor_user.email.class
