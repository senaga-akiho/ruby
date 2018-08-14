#base.rbをロード
require './base'
class Stack < Base
	# pushメソッド
	def push_proc
		puts 'stackのプッシュだよ'
	end

	# popメソッド
	def pop_proc
		puts 'stackのpopだよ'
	end
end