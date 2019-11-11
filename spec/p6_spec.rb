require 'p6/alimento.rb'

RSpec.describe Alimento do
	before :each do
		@alimento  = Alimento.new("carne",73,2,300,7,8,"hombre")
		@alimento2 = Alimento.new("carne",33,2,240,7,8,"mujer")
	end

	describe "Pruebas alimento" do

		it "Alimento tiene nombre" do
			expect(@alimento.nombre).to eq("carne")
		end

		it "Alimento tiene proteina" do
			expect(@alimento.proteinas).to eq(73)
		end

		it "Alimento tiene carbohidratos" do
			expect(@alimento.carbohidratos).to eq(2)
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
	end
end
