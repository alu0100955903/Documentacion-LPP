class Alimento

	include Comparable

	attr_reader :nombre, :proteinas, :carbohidratos, :lipidos, :gei, :terreno

	def initialize (nombre, proteinas, carbohidratos, lipidos, gei, terreno)
		@nombre, @proteinas, @carbohidratos, @lipidos, @gei, @terreno = nombre, proteinas, carbohidratos, lipidos, gei, terreno
	end


	def d_nombre
		return @nombre
	end

	def d_proteina
		return @proteinas
	end

	def d_carbohidratos
		return @carbohidratos
	end

	def d_lipidos
		return @lipidos
	end

	def d_gei
		return @gei
	end

	def d_terreno
		return @terreno
	end

	def irenergia
		@irenergia=(@lipidos*9)+(@proteinas*4)+(@carbohidratos*4)
		return @irenergia
	end
	
	def <=> (other)
		irenergia <=> other.irenergia
	end
end
