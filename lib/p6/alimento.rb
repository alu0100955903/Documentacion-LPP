class Alimento

	attr_reader :nombre, :proteinas, :carbohidratos, :lipidos, :gei, :terreno, :genero

	def initialize (nombre, proteinas, carbohidratos, lipidos, gei, terrerno, genero)
		@nombre, @proteinas, @carbohidratos, @lipidos, @gei, @terreno, @genero= nombre, proteinas, carbohidratos, lipidos, gei, terreno, genero
	end


	def devolver_nombre
		return @nombre
	end

	def devolver_proteina
		return @proteinas
	end

	def devolver_carbohidratos
		return @carbohidratos
	end

	def devolver_lipidos
		return @lipidos
	end

	def devolver_gei
		return @gei
	end

	def devolver_terreno
		return @terreno
	end

	def devolver_genero
		return @genero
	end

	def irenergia
		@irenergia=(@lipidos*9)+(@proteinas*4)+(@carbohidratos*4)
		return @irenergia
	end
end
