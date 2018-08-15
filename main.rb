require './stack'
require './queue'
require './member'
queue = Ueue.new
stack = Stack.new
queue.push(Member.new("田中",22,"男"))
queue.push(Member.new("中谷",32,"女"))
queue.pop
queue.push(Member.new("瀬長",21,"男"))
queue.pop
stack.push(Member.new("鈴木",50,"女"))
stack.push(Member.new("砂糖",41,"男"))
stack.pop
stack.push(Member.new("宮里",20,"女"))
stack.pop