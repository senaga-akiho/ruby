class Base
	# Arrayを１つ持たせる
	box = Array.new

	# 継承したClassはこれを呼び出す(push)
	def push
		push_proc
	end
	# これを子クラスでオーバーライドしないとpushから呼ばれてエラーになる
	def push_proc
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