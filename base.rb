require './member'
class Base
	# 属性をうまく継承させるための〜？
	class << self
	  attr_accessor :box

	  def inherited(klass)
	  	# Arrayを１つ持たせる
	  	@box = []
	    klass.box = @box
	  end
	end

	# 継承したClassはこれを呼び出す(push)
	def push(member)
		# メンバークラスか確認，trueだったら配列にプッシュ
		if member.instance_of?(Member)
			push_proc(member)
  		end
	end
	# これを子クラスでオーバーライドしないとpushから呼ばれてエラーになる
	def push_proc(member)
		raise "call abstract !"
	end

	# 継承したClassはこれを呼び出す(pop)
	def pop
		pop_proc
	end
	# これを子クラスでオーバーライドしないとpopから呼ばれてエラーになる
	def pop_proc
		raise "call abstract !"
	end
end