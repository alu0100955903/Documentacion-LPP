require 'p6/alimento.rb'
require 'p6/lista.rb'

RSpec.describe Alimento do
	before :each do
		@nodo1 = Node.new(1,NIL,NIL)
		@nodo2 = Node.new(2,NIL,NIL)
		@lista = List.new(NIL,NIL)
	end

	describe "Pruebas de lista" do
		it "Inserta nodo por cola bien" do
			@lista.inserta_por_cola(@nodo1)
			expect(@lista.tail.value).to eq(1)
		end

		it "Extrae nodo por cola bien" do
			@lista.inserta_por_cola(@nodo1)
			@lista.inserta_por_ccola(@nodo2)
			@lista.extraer_por_cola
			expect(@lista.tail.value).to eq(2)
		end
	end
end
