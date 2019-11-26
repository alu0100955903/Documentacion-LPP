class Plato_hijo < Plato

	include Comparable, Enumerable

	def <=> (other)
		por_proteinas <=> other.por_proteinas
	end

	def each(&block)
		puntero=@alimento.head
		while(puntero!=nil) do
			yield puntero.value
			puntero=puntero.nest
		end
	end	
end
