class Plato

	attr_reader :nombre, :alimentos, :cantidades

	def initialize(nombre, alimentos, cantidades)
		@nombre, @alimentos, @cantidades = nombre, alimentos, cantidades	
	end

	def por_proteinas
		
		total_prot = @alimentos.get_proteinas
	        total_nutr = @alimentos.get_nutrientes
		
		porcentaje_proteinas = (total_prot * 100) / total_nutr
		
		return porcentaje_proteinas	
	
	end	
end
