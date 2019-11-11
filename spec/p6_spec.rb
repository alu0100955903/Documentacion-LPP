require 'p6/alimento.rb'

RSpec.describe Alimento do
	before :each do
		@alimento = Alimento.new("carne",10,2,6)
	end

	describe "Pruebas alimento" do
		it "Alimento tiene nombre" do
			expect(@alimento.nombre) == "carne"
		end
	end
end
