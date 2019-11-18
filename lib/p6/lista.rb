Node = Struct.new(:value, :nest, :prev)

class List

	#Punteros head y tail
	attr_reader :head, :tail
	
	#Creamos una lista e inicializamos los valores
	def initialize (head, tail)
		@head = head
		@tail = tail
	end
	
	#Metodo insertar nodo por cola
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

	#Metodo insertar nodo por cabeza
	def insertar_por_cabeza(value)
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

	#Metodo extraer nodo por cabeza
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

	#Metodo extraer nodo por cola
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

	#Metodo comprobar si esta vacío
        def vacio
		if(@tail==nil)
			return true
		else
			return false
		end
        end

	#Metodo convertir a cadena
	def to_s

		puntero=@head
		cadena='['
			if(@head!=nil)
				while (puntero!= nil) do
					cadena+=puntero.value.to_s + ']'
					if(puntero.nest!=nil)
						puntero=puntero.nest
						cadena+= '['
					else
						puntero=nil
					end
				end
			end

	end
end
