Node = Struct.new(:value, :next, :prev)

class List


	def initialize (head, tail)
		@head = nil
		@tail = nil
	end

	def insertar_por_cola(value)
		nodo=Node.new(value,nil,nil)
		if(@tail==nil)
			@tail=nodo
			@head=nodo
		else
			nodo.prev=@tail
			@tail.nest=nodo
			@tail=nodo
			nodo.nest=nil
		end
	end
end
