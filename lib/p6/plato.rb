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

	def por_lipidos
		total_lip  = @alimentos.get_lipidos
		total_nutr = @alimentos.get_nutrientes
		porcentaje_lipidos = (total_lip * 100) / total_nutr
		return porcentaje_lipidos
	end

	def por_carbo
		total_car  = @alimentos.get_carbo
		total_nutr = @alimentos.get_nutrientes
		porcentaje_carbo = (total_car * 100) /total_nutr
		return porcentaje_carbo
	end
end
