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
#     puts ""
#  	@age = gets.to_i
#  	# 半角数字以外ならループ
# 	break if @age !=0
# end
