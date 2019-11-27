class Plato_hijo < Plato

	include Comparable

	def <=> (other)
		por_proteinas <=> other.por_proteinas
	end

	def calc_gases
		gei = @alimentos.gases
		return gei
	end

	def calc_terreno
		ter = @alimentos.tierras
		return ter
	end
	
	def eficiencia
		efi = @alimentos.get_energia
		return efi
	end
end
