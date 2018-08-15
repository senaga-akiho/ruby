require './stack'
require './queue'
require './member'
a = Ueue.new
b = Stack.new
c = Member.new("田中",22,"男")
b.push(c)
# loop do 
#     puts "年齢を入力してください(半角数字１以上で)"
#  	@age = gets.to_i
#  	# 半角数字以外ならループ
# 	break if @age !=0
# end
