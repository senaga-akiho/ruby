#base.rbをロード
require './base'
class Stack < Base

	# pushメソッド
	# def push_proc(member)
		# self.class.box.push member
		# for num in 0..self.class.box.length-1 do
		# 	puts "スタックの中身"+(num+1).to_s+"個目"
  # 			puts self.class.box[num].print_property
		# end
	# end

	# popメソッド
	def pop_proc
		self.class.box.pop
		for num in 0..self.class.box.length-1 do
			puts "スタックの中身"+(num+1).to_s+"個目"
  			puts self.class.box[num].print_property
		end
	end
end