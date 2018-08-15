#base.rbをロード
require './base'
class Ueue < Base
	@box = []

	# pushメソッド
	def push_proc
		self.class.box.push "中谷"
		p self.class.box
	end

	# popメソッド
	def pop_proc
		self.class.box.shift
		p self.class.box
	end
end