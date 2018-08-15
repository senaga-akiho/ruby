require './stack'
require './queue'
require './member'
queue = Ueue.new
stack = Stack.new
queue.push(Member.new("田中",22,"男"))
queue.push(Member.new("中谷",32,"女"))
queue.pop
queue.push(Member.new("瀬長",21,"男"))
stack.push(Member.new("田中",22,"男"))

# loop do 
#     puts "番号を選んでください0:終わる 1:キューにプッシュ 2:キューをポップ 3:スタックにプッシュ 4:スタックをポップ"
#  	judge = gets.to_i
#  	if judge == 1 then
#  		queue.push(Member.new)
#  	elsif judge == 2 then
#  		queue.pop
#  	elsif judge == 3 then
#  		stack.push(Member.new)
#  	elsif judge == 4 then
#  		stack.pop
#  	end
#  	# 半角数字以外ならループ
# 	break if judge ==0
# end
