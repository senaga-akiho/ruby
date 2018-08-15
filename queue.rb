#base.rbをロード
require './base'
class Ueue < Base

	# pushメソッド
	def push_proc(member)
		self.class.box.push member
		p self.class.box
	end

	# popメソッド
	def pop_proc
		self.class.box.shift
		p self.class.box
	end
end