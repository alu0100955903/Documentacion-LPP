class Alimento

	attr_reader :nombre, :proteinas, :carbohidratos, :lipidos, :gei, :terreno

	def initialize (nombre, proteinas, carbohidratos, lipidos, gei, terrerno)
		@nombre, @proteinas, @carbohidratos, @lipidos, @gei, @terreno = nombre, proteinas, carbohidratos, lipidos, gei, terreno
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
end
