#base.rbをロード
require './base'
class Ueue < Base
	# pushメソッド
	def push_proc
		puts 'queueのプッシュだよ'
	end

	# popメソッド
	def pop_proc
		puts 'queueのpopだよ'
	end
end