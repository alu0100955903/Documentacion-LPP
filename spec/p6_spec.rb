require 'p6/alimento.rb'

RSpec.describe Alimento do
	before :each do
		@alimento = Alimento.new("carne",10,2,6,7,8,"hombre")
	end

	describe "Pruebas alimento" do

		it "Alimento tiene nombre" do
			expect(@alimento.nombre) == "carne"
		end

		it "Alimento tiene proteina" do
			expect(@alimento.proteinas).to eq(10)
		end

		it "Alimento tiene carbohidratos" do
			expect(@alimento.carbohidratos).to eq(2)
		end

		it "Alimento tiene lipidos" do
			expect(@alimento.lipidos).to eq(6)
		end

		it "Alimento tiene GEI" do
			expect(@alimento.gei).to eq(7)
		end

		it "Alimento tiene terreno" do
			expect(@alimento.terreno) == 8
		end

		it "Genero definido correctamente" do
			expect(@alimento.genero) == "hombre"
		end
	end
end
