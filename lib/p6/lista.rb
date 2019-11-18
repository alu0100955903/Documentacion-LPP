Node = Struct.new(:value, :next, :prev)

class List


	def initialize (head, tail)
		@head = nil
		@tail = nil
	end

	def inserta_por_cola(value)
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

	def extraer_por_cola
		if(@tail==nil)
			puts "No hay nada que extraer (lista vacia)"
		else
			aux=@tail
			@tail=@tail.prev
			aux.prev=nil
			if(@tail!=nil)
				@tail.nest=nil
			end
		end
			
		return aux
	end

	def inserta_por_cabeza(value)
		nodo=Node.new(value,nil,nil)
		if(@head==nil)
			@tail=nodo
			@head=nodo
		else
			nodo.nest=@head
			@head.prev=nodo
			@head=nodo
			nodo.prev=nil
		end

	end

	def extraer_por_cabeza
		if(@head==nil)
			puts "No hay nada que extraer (lista vacia)"
		else
			aux=@head
			@head=@head.nest
			if(head!=nil)
				@head.prev=nil
			end
			aux.nest=nil
			if(@head==nil)
				@tail=nil
			end
		end			

		return aux

	end

	def vacio
		if(@tail==nil)
			return true
		else
			return false
		end
	end
end
