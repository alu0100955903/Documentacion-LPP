require 'p6/alimento.rb'

RSpec.describe Alimento do
	before :each do
		@alimento = Alimento.new("carne",10,2,6,7,8)
	end

	describe "Pruebas alimento" do

		it "Alimento tiene nombre" do
			expect(@alimento.nombre) == "carne"
		end

		it "Alimento tiene proteina" do
			expect(@alimento.proteinas).to eq(10)
		end
	end
end
