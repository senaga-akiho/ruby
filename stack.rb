#base.rbをロード
require './base'
class Stack < Base

	# pushメソッドはbase.rbに

	# popメソッド
	def pop_proc
		self.class.box.pop
	end
end