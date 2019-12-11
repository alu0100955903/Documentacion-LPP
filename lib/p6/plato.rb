class Plato

	attr_reader :nombre, :alimentos, :cantidades

	def initialize(nombre, alimentos, cantidades)
		@nombre, @alimentos, @cantidades = nombre, alimentos, cantidades	
	end

	def get_alimento
		return @alimentos
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

	def huella_nutricional
		@huella_energia
		if @alimentos.get_energia <=670
			@huella_energia=1.0
		elsif @alimentos.get_energia>670 and @alimentos.get_energia<=830
		        @huella_energia=2.0
		else
		        @huella_energia=3.0
		end

		@huella_carbono
		if @alimentos.gases <=800
			@huella_carbono=1.0
		elsif @alimentos.gases>800 and @alimentos.gases<=1200
		        @huella_carbono=2.0
		else
		        @huella_carbono=3.0
		end

		return (@huella_carbono+@huella_energia)/2
	end

end
