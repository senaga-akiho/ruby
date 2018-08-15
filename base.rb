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
			# プッシュ
			self.class.box.push member
			# 箱の中身表示
			puts "#{self.class.name}にプッシュしました"
			print_box
  		end
	end

	# 継承したClassはこれを呼び出す(pop)
	def pop
		pop_proc
		# 箱の中身表示
		puts "#{self.class.name}にpopしました"
		print_box
	end

	# これを子クラスでオーバーライドしないとpopから呼ばれてエラーになる
	def pop_proc
		raise "call abstract !"
	end

	 # 配列の中身memberのプロパティをプリント
	def print_box
		 #平均年齢用変数
		ave_age = 0
		for num in 0..self.class.box.length-1 do
			 #中身の表示
			print "#{self.class.name}の中身"+(num+1).to_s+"個目"
			print self.class.box[num].print_property
			 #年齢を足し算
			ave_age += self.class.box[num].get_age
		end
		 #平均年齢表示
		puts "#{self.class.name}の平均年齢" + (ave_age.to_f/self.class.box.length).to_s + "歳"
		puts
	end
end