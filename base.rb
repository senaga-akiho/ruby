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
			# push_proc(member)
			self.class.box.push member
			for num in 0..self.class.box.length-1 do
				puts "キューの中身"+(num+1).to_s+"個目"
				puts self.class.box[num].print_property
			end
  		end
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