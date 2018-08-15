class Member
	# 手入力をさせる
	def initialize()
		# 名前を入力させる
		puts "名前を入力してください"
    	@name = gets.chomp!
    	@age = nil
    	# 年齢を入力させる
    	loop do 
    		puts "年齢を入力してください(半角数字１以上で)"
 			@age = gets.to_i
 			# 半角数字以外ならループ
  			break if @age !=0
		end
		#性別を入力させる
    	puts "性別を入力させてください"
    	@gender = gets.chomp!
  	end

  	# 引数ありの初期化
  	def initialize(name,age,gender)
    	@name = name
    	@age = age.to_i
    	@gender = gender
  	end

  	#プロパティをつなげて表示
  	def print_property
  		print @name + @age.to_s + @gender
  	end
end