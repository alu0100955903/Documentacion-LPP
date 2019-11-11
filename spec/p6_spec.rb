require 'p6/alimento.rb'

RSpec.describe Alimento do
	before :each do
		@alimento  = Alimento.new("carne",54,21,300,7,8,"hombre")
		@alimento2 = Alimento.new("carne",41,39,220,7,8,"mujer")
	end

	describe "Pruebas alimento" do

		it "Alimento tiene nombre" do
			expect(@alimento.nombre).to eq("carne")
		end

		it "Alimento tiene carbohidratos" do
			expect(@alimento.carbohidratos).to eq(21)
		end

		it "Alimento tiene lipidos" do
			expect(@alimento.lipidos).to eq(300)
		end

		it "Alimento tiene GEI" do
			expect(@alimento.gei).to eq(7)
		end

		it "Alimento tiene terreno" do
			expect(@alimento.terreno)==8
		end

		it "Genero definido correctamente" do
			expect(@alimento.genero).to eq("hombre")
		end

		it "Ingesta de energia hombre" do
			expect(@alimento.irenergia).to eq(3000)
		end

		it "Ingesta de energia mujer" do
			expect(@alimento2.irenergia).to eq(2300)
		end

		it "Ingesta de proteinas recomentada hombre" do
			expect(@alimento.devolver_proteina).to eq(54)
		end
		
		it "Ingesta de proteinas recomendada mujer" do
			expect(@alimento2.devolver_proteina).to eq(41)
		end
	end
end
