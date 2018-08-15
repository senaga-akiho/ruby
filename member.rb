class Member
  # 引数ありの初期化
  def initialize(name,age,gender)
    @name = name
    # 数字にする
    @age = age.to_i
    @gender = gender
  end

  	#プロパティをつなげて表示
  def print_property
  	print @name + @age.to_s + @gender
  end
  # 年齢をとりだす
  def get_age
    return @age
  end
end