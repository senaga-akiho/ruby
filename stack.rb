#base.rbをロード
require './base'
class Stack < Base
	@box = []
	
	# pushメソッド
	def push_proc
		self.class.box.push "田中"
		p self.class.box
	end

	# popメソッド
	def pop_proc
		self.class.box.pop
		p self.class.box
	end
end