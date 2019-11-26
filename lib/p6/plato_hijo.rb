class Plato_hijo < Plato

	include Comparable

	def <=> (other)
		por_proteinas <=> other.por_proteinas
	end

		
end
