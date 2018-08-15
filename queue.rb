#base.rbをロード
require './base'
class Ueue < Base

	# pushメソッドはbase.rbに

	# popメソッド
	def pop_proc
		self.class.box.shift
	end
end