#base.rbをロード
require './base'
class Stack < Base

	# pushメソッド
	def push_proc(member)
		self.class.box.push member
		p self.class.box
	end

	# popメソッド
	def pop_proc
		self.class.box.pop
		p self.class.box
	end
end