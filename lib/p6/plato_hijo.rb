class Plato_hijo < Plato

	include Comparable

	def <=> (other)
		huella_nutricional <=> other.huella_nutricional
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
		
		puts @alimentos.get_energia
		puts @alimentos.gases
		
		return (@huella_carbono+@huella_energia)/2
	end
end
